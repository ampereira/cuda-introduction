/**************************************************************
 * 
 * --== Simple CUDA kernel ==--
 * author: ampereira
 * 
 *
 * Fill the rest of the code through the following steps:
 * -> allocate the device memory
 * -> copy the inputs to the device
 * -> call the kernel
 * -> copy the output to the host
 * 
 * extra points for
 * -> reversing the output array on the device
 *
 **************************************************************/

#include <cstdlib>
#include <iostream>

#define NUM_BLOCKS 16
#define NUM_THREADS_PER_BLOCK 32
#define SIZE NUM_BLOCKS*NUM_THREADS_PER_BLOCK

using namespace std;

void checkCUDAError (const char *msg) {
	cudaError_t err = cudaGetLastError();
	if( cudaSuccess != err) {
		cerr << "Cuda error: " << msg << ", " << cudaGetErrorString( err) << endl;
		exit(-1);
	}
}

// Fill the input parameters and kernel qualifier
void vecAdditionKernel () {

}

int main( int argc, char** argv) {
	// arrays on the host
	float a[SIZE], b[SIZE], c[SIZE];

	// pointers to the device memory


	// fills the arrays
	for (unsigned i = 0; i < SIZE; ++i) {
		a[i] = rand() / RAND_MAX;
		b[i] = rand() / RAND_MAX;
	}

	// allocate the memory on the device

	checkCUDAError("mem allocation");
	// copy inputs to the device

	checkCUDAError("memcpy h->d");
	// launch the kernel

	checkCUDAError("kernel invocation");
	// copy the output to the host

	checkCUDAError("memcpy d->h");
	// free the device memory

	checkCUDAError("mem free");

	return 0;
}