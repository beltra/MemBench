#ifndef DDRBENCHMARK_HPP
#define DDRBENCHMARK_HPP
#include <iostream>
#include <stdlib.h>
#include "ap_int.h"
#include <hls_stream.h>

#define INPUT_BITWIDTH 512

#define MAX_TEST_DIM 16384

#define WRITE 1
#define READ 0

const unsigned int max_data_depth = MAX_TEST_DIM;

void ddrBenchmark(ap_uint<INPUT_BITWIDTH> *mem, int dataNum, bool rw, int64_t *res);

void writeData(ap_uint<INPUT_BITWIDTH> *mem, int dataNum);
void readData(ap_uint<INPUT_BITWIDTH> *mem, int dataNum);

void compareHWResult(ap_uint<INPUT_BITWIDTH> *data, int dataNum, bool *res);
void countCycles(hls::stream<int64_t> &cmd, int64_t *out);
void runBench(ap_uint<INPUT_BITWIDTH> *mem, hls::stream<int64_t> &cmd,
		int dataNum, bool rw);

#endif //DDRBENCHMARK_HPP
