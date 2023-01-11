#include "../ddrbenchmark.hpp"

//#define MULTIPLE_TEST
#define REPETITIONS 100

void runHWTest(ap_uint<INPUT_BITWIDTH> *mem, int dataNum, bool rw) {
	int64_t timeTaken = 0;
	bool valid = false;

	ddrBenchmark(mem, dataNum, rw, &timeTaken);
	compareHWResult(mem, dataNum, &valid);

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

void runHWTestMultiple(ap_uint<INPUT_BITWIDTH> *mem, int dataNum, bool rw,
		int totReps) {
	int64_t timeTaken = 0;
	double timeTakenAvg = 0.0;
	bool valid = 0;
	int rep = 0;

	for (int i = 0; i < totReps; i++) {
		valid = 0;
		ddrBenchmark(mem, dataNum, rw, &timeTaken);
		compareHWResult(mem, dataNum, &valid);
		if (valid) {
			timeTakenAvg += timeTaken;
			rep++;
		} else {
			std::cout << "Invalid test n. " << i << std::endl;
		}
	}

	timeTakenAvg /= rep;

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

	ap_uint<INPUT_BITWIDTH> mem[MAX_TEST_DIM];

	int64_t timeTaken;
	int dataDim = 16384;
	int valid = -1;

	if (dataDim > MAX_TEST_DIM) {
		return -1;
	}

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

