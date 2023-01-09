#include "ddrbenchmark.hpp"

void countCycles(hls::stream<int64_t> &cmd, int64_t *out) {
	int64_t val;
	// Start counting when data is available
	int64_t cnt = cmd.read();
	// Keep counting until a value is available
	count: while (cmd.read_nb(val) == false) {
		cnt++;
	}

	// Write back clock count
	*out = cnt;
}

void compareHWResult(ap_uint<INPUT_BITWIDTH> *data, int dataNum, bool *res) {
	bool valid = true;

	// Check if data in memory is correctly written
	verifyData: for (int i = 0; i < dataNum && valid; i++) {
#pragma HLS PIPELINE
		valid = data[i] == (ap_uint<INPUT_BITWIDTH> ) i;
	}
	*res = valid;

	return;
}

void writeData(ap_uint<INPUT_BITWIDTH> *mem, int dataNum) {
	dataWrite: for (int i = 0; i < dataNum; i++) {
		mem[i] = (ap_uint<INPUT_BITWIDTH> ) i;
	}
}

void readData(ap_uint<INPUT_BITWIDTH> *mem, int dataNum) {
	ap_uint< INPUT_BITWIDTH> tmp;
	dataRead: for (int i = 0; i < dataNum; i++) {
		tmp = mem[i];
	}
}

void runBench(ap_uint<INPUT_BITWIDTH> *mem, hls::stream<int64_t> &cmd,
		int dataNum, bool rw) {
	if (rw == WRITE) {
		cmd.write(0);  // Start counting
		writeData(mem, dataNum);  // Write data
		cmd.write(0);  // Stop counting
	} else if (rw == READ) {
		if (mem[1] != 1) {
			// Data not already written one time
			writeData(mem, dataNum);
		}
		cmd.write(0);  // Start counting
		readData(mem, dataNum);  // Read data
		cmd.write(0);  // Stop counting
	}
}

void ddrBenchmark(ap_uint<INPUT_BITWIDTH> *mem, int dataNum, bool rw, int64_t *res) {

//#pragma HLS INTERFACE m_axi port=mem depth=dataNum bundle=gmem num_write_outstanding=4 max_write_burst_length=4 num_read_outstanding=4 max_read_burst_length=4 offset=slave
#pragma HLS INTERFACE m_axi port=mem depth=data_depth bundle=gmem offset=slave
#pragma HLS INTERFACE s_axilite register port=mem bundle=control
#pragma HLS INTERFACE s_axilite register port=return bundle=control

	std::cout << "** Started kernel **" << std::endl;

#pragma HLS DATAFLOW

	hls::stream<int64_t> counterCmd;

	runBench(mem, counterCmd, dataNum, rw);
	countCycles(counterCmd, res);
}
