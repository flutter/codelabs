#include <stdio.h>

#include "aligned_buf.h"

void reso_benchmark(int n, bool nonlinear);

#ifdef HAVE_NEON
extern "C" void neon_ladder_mkmatrix(const float *in, float *out);
#endif

int main(int argc, char** argv) {
#ifdef HAVE_NEON
	float in[2] = {0.1, 3.9};
	AlignedBuf<float, 20> a;
	for (int i = 0; i < 10000000; i++) {
		neon_ladder_mkmatrix(in, a.get());
	}
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 5; j++) {
			printf("%6f ", a.get()[j * 4 + i]);
		}
		printf("\n");
	}
#endif

	//reso_benchmark(1000000, false);
	return 0;
}
