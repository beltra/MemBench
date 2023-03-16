#include "ddrbenchmark.hpp"

void countCycles(hls::stream<int64_t> &cmd, uint64_t *out) {
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

void writeData(ap_uint<DATA_BITWIDTH> *mem, int dataNum) {
	dataWrite: for (int i = 0; i < dataNum; i++) {
		mem[i] = (ap_uint<DATA_BITWIDTH> )i;	// Store a sequential number in the array
	}
}

void readData(ap_uint<DATA_BITWIDTH> *mem, int dataNum) {
	ap_uint<DATA_BITWIDTH> tmp = 0;
	dataRead: for (int i = 0; i < dataNum; i++) {
#pragma HLS PIPELINE II=1
		tmp += (mem[i] == (ap_uint<DATA_BITWIDTH> )i);	// Read each value and if vaild add one to a tmp variable
	}
	mem[0] = tmp; // Save the value
}

void runBench(ap_uint<DATA_BITWIDTH> *mem, hls::stream<int64_t> &cmd,
		int dataNum, bool rw) {
	if (rw == WRITE) {
		cmd.write(0);  // Start counting
		writeData(mem, dataNum);  // Write data
		cmd.write(1);  // Stop counting
	} else if (rw == READ) {
		cmd.write(0);  // Start counting
		readData(mem, dataNum);  // Read data
		cmd.write(1);  // Stop counting
	}
}

void ddrBenchmark(ap_uint<DATA_BITWIDTH> *mem, int dataNum, bool rw, uint64_t *res) {

#pragma HLS INTERFACE m_axi port=mem depth=max_data_depth bundle=gmem offset=slave
#pragma HLS INTERFACE m_axi port=res depth=1 bundle=results offset=slave

#pragma HLS INTERFACE s_axilite register port=mem bundle=control
#pragma HLS INTERFACE s_axilite register port=res bundle=control

#pragma HLS INTERFACE s_axilite register port=dataNum bundle=control
#pragma HLS INTERFACE s_axilite register port=rw bundle=control
#pragma HLS INTERFACE s_axilite register port=return bundle=control

#pragma HLS DATAFLOW

	hls::stream<int64_t> counterCmd;

	runBench(mem, counterCmd, dataNum, rw);
	countCycles(counterCmd, res);
}
