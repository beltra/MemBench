#ifndef DDRBENCHMARK_HPP
#define DDRBENCHMARK_HPP
#include <iostream>
#include <stdlib.h>
#include "ap_int.h"
#include <hls_stream.h>

#define DATA_BITWIDTH 64

#define MAX_MEM_USE 512  // Max test dim in KB

#define MAX_TEST_DIM ((MAX_MEM_USE*1024)/DATA_BITWIDTH)*8

#define WRITE 1
#define READ 0

const unsigned int max_data_depth = MAX_TEST_DIM;

void ddrBenchmark(ap_uint<DATA_BITWIDTH> *mem, int dataNum, bool rw, uint64_t *res);

void writeData(ap_uint<DATA_BITWIDTH> *mem, int dataNum);
void readData(ap_uint<DATA_BITWIDTH> *mem, int dataNum);

void countCycles(hls::stream<int64_t> &cmd, uint64_t *out);
void runBench(ap_uint<DATA_BITWIDTH> *mem, hls::stream<int64_t> &cmd,
		int dataNum, bool rw);

#endif //DDRBENCHMARK_HPP
