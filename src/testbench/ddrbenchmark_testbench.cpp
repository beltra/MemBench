#include "../ddrbenchmark.hpp"

//#define MULTIPLE_TEST
#define REPETITIONS 100

void compareHWResult(ap_uint<DATA_BITWIDTH> *mem, int dataNum, bool *res) {
	bool valid = true;

	// Check if data in memory is correctly written
	verifyData: for (int i = 0; i < dataNum && valid; i++) {
		valid = mem[i] == (ap_uint<DATA_BITWIDTH> ) i;
	}
	*res = valid;

	return;
}

void runHWTest(ap_uint<DATA_BITWIDTH> *mem, int dataNum, bool rw) {
	uint64_t timeTaken = 0;
	bool valid = false;

	// Run the test and check if correctly executed
	ddrBenchmark(mem, dataNum, rw, &timeTaken);
	compareHWResult(mem, dataNum, &valid);

	// Print results
	if (valid) {
		std::cout << "* Single test *" << std::endl;
		std::cout << "- Time taken: " << timeTaken << " clock cycles"
				<< std::endl;
		std::cout << "- Mode: " << (rw ? "Write" : "Read") << std::endl;
		std::cout << std::endl;
	} else {
		std::cout << "!!! INVALID TEST !!!" << std::endl;
	}
}

void runHWTestMultiple(ap_uint<DATA_BITWIDTH> *mem, int dataNum, bool rw,
		int totReps) {

	uint64_t timeTaken = 0;
	double timeTakenAvg = 0.0;
	bool valid = 0;
	int rep = 0;

	// Run multiple tests and get the average results
	for (int i = 0; i < totReps; i++) {
		valid = 0;
		ddrBenchmark(mem, dataNum, rw, &timeTaken);
		compareHWResult(mem, dataNum, &valid);
		if (valid) {
			timeTakenAvg += timeTaken;
			rep++;
		} else {
			std::cout << "Test n. " << i << "invalid" << std::endl;
		}
	}

	timeTakenAvg /= rep;

	// Print results
	if (rep > 0) {
		std::cout << "* Multiple test *" << std::endl;
		std::cout << "- Time taken: " << timeTakenAvg << " clock cycles"
				<< std::endl;
		std::cout << "- Mode: " << (rw ? "Write" : "Read") << std::endl;
		std::cout << "- Reps: " << totReps << std::endl;
		std::cout << std::endl;
	} else {
		std::cout << "* Multiple test *" << std::endl;
		std::cout << "!!! NO VALID TEST !!!" << std::endl;
	}
}

int main(int argc, char *argv[]) {
	std::cout << "** Starting TB **" << std::endl;

	ap_uint<DATA_BITWIDTH> mem[MAX_TEST_DIM];

	int dataDim = 8192;

#ifndef MULTIPLE_TEST
	runHWTest(mem, dataDim, WRITE);
	runHWTest(mem, dataDim, READ);
#else
	runHWTestMultiple(mem, dataDim, WRITE, REPETITIONS);
	runHWTestMultiple(mem, dataDim, READ, REPETITIONS);
#endif

	std::cout << "** TB ended **" << std::endl;

	return 0;
}

