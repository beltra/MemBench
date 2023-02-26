#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_mem "../tv/cdatafile/c.ddrBenchmark.autotvin_mem.dat"
#define AUTOTB_TVOUT_mem "../tv/cdatafile/c.ddrBenchmark.autotvout_mem.dat"
#define AUTOTB_TVIN_dataNum "../tv/cdatafile/c.ddrBenchmark.autotvin_dataNum.dat"
#define AUTOTB_TVOUT_dataNum "../tv/cdatafile/c.ddrBenchmark.autotvout_dataNum.dat"
#define AUTOTB_TVIN_rw "../tv/cdatafile/c.ddrBenchmark.autotvin_rw.dat"
#define AUTOTB_TVOUT_rw "../tv/cdatafile/c.ddrBenchmark.autotvout_rw.dat"
#define AUTOTB_TVIN_res "../tv/cdatafile/c.ddrBenchmark.autotvin_res.dat"
#define AUTOTB_TVOUT_res "../tv/cdatafile/c.ddrBenchmark.autotvout_res.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.ddrBenchmark.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.ddrBenchmark.autotvout_gmem.dat"
#define AUTOTB_TVIN_results "../tv/cdatafile/c.ddrBenchmark.autotvin_results.dat"
#define AUTOTB_TVOUT_results "../tv/cdatafile/c.ddrBenchmark.autotvout_results.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_mem "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_mem.dat"
#define AUTOTB_TVOUT_PC_dataNum "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_dataNum.dat"
#define AUTOTB_TVOUT_PC_rw "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_rw.dat"
#define AUTOTB_TVOUT_PC_res "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_res.dat"
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_gmem.dat"
#define AUTOTB_TVOUT_PC_results "../tv/rtldatafile/rtl.ddrBenchmark.autotvout_results.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  mem_depth = 0;
  dataNum_depth = 0;
  rw_depth = 0;
  res_depth = 0;
  gmem_depth = 0;
  results_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{mem " << mem_depth << "}\n";
  total_list << "{dataNum " << dataNum_depth << "}\n";
  total_list << "{rw " << rw_depth << "}\n";
  total_list << "{res " << res_depth << "}\n";
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{results " << results_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int mem_depth;
    int dataNum_depth;
    int rw_depth;
    int res_depth;
    int gmem_depth;
    int results_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void ddrBenchmark_hw_stub_wrapper(volatile void *, int, char, volatile void *);

extern "C" void apatb_ddrBenchmark_hw(volatile void * __xlx_apatb_param_mem, int __xlx_apatb_param_dataNum, char __xlx_apatb_param_rw, volatile void * __xlx_apatb_param_res) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(11184808);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_mem, 11184808, 0);
}
#else
try {
static PostCheck<64> pc(AUTOTB_TVOUT_PC_gmem);
pc.psize = 8;
pc.param = (char*)__xlx_apatb_param_mem;
pc.depth = 11184808;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif
try {
static PostCheck<64> pc(AUTOTB_TVOUT_PC_results);
pc.psize = 8;
pc.param = (char*)__xlx_apatb_param_res;
pc.depth = 1;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_mem = 0;
unsigned __xlx_offset_byte_param_res = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<64> tr(11184808);
__xlx_offset_byte_param_mem = 0*8;
if (__xlx_apatb_param_mem) {
  tr.import<8>((char*)__xlx_apatb_param_mem, 11184808, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
tcl_file.set_num(11184808, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_mem = 0*8;
if (__xlx_apatb_param_mem) {
for (size_t i = 0; i < 11184808; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_mem + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(11184808, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
#endif
aesl_fh.touch(AUTOTB_TVIN_results);
{
aesl_fh.write(AUTOTB_TVIN_results, begin_str(AESL_transaction));
__xlx_offset_byte_param_res = 0*8;
if (__xlx_apatb_param_res) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_res + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_results, s);
}
}
tcl_file.set_num(1, &tcl_file.results_depth);
aesl_fh.write(AUTOTB_TVIN_results, end_str());
}
// print mem Transactions
{
aesl_fh.write(AUTOTB_TVIN_mem, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_mem;
aesl_fh.write(AUTOTB_TVIN_mem, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.mem_depth);
aesl_fh.write(AUTOTB_TVIN_mem, end_str());
}

// print dataNum Transactions
{
aesl_fh.write(AUTOTB_TVIN_dataNum, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_dataNum;
aesl_fh.write(AUTOTB_TVIN_dataNum, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.dataNum_depth);
aesl_fh.write(AUTOTB_TVIN_dataNum, end_str());
}

// print rw Transactions
{
aesl_fh.write(AUTOTB_TVIN_rw, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_rw;
aesl_fh.write(AUTOTB_TVIN_rw, formatData(pos, 1));
}
  tcl_file.set_num(1, &tcl_file.rw_depth);
aesl_fh.write(AUTOTB_TVIN_rw, end_str());
}

// print res Transactions
{
aesl_fh.write(AUTOTB_TVIN_res, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_res;
aesl_fh.write(AUTOTB_TVIN_res, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.res_depth);
aesl_fh.write(AUTOTB_TVIN_res, end_str());
}

CodeState = CALL_C_DUT;
ddrBenchmark_hw_stub_wrapper(__xlx_apatb_param_mem, __xlx_apatb_param_dataNum, __xlx_apatb_param_rw, __xlx_apatb_param_res);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<64> tr(11184808);
__xlx_offset_byte_param_mem = 0*8;
if (__xlx_apatb_param_mem) {
  tr.import<8>((char*)__xlx_apatb_param_mem, 11184808, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
tcl_file.set_num(11184808, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem);
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_mem = 0*8;
if (__xlx_apatb_param_mem) {
for (size_t i = 0; i < 11184808; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_mem + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
tcl_file.set_num(11184808, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}
#endif
aesl_fh.touch(AUTOTB_TVOUT_results);
{
aesl_fh.write(AUTOTB_TVOUT_results, begin_str(AESL_transaction));
__xlx_offset_byte_param_res = 0*8;
if (__xlx_apatb_param_res) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_res + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_results, s);
}
}
tcl_file.set_num(1, &tcl_file.results_depth);
aesl_fh.write(AUTOTB_TVOUT_results, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
