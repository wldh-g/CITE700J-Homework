#ifndef _CUDA_UTIL_H_
#define _CUDA_UTIL_H_

#include <cstdint>
#include <cuda_runtime.h>

#define __x_pos__ blockDim.x * blockIdx.x + threadIdx.x
#define __y_pos__ blockIdx.y

template<typename T = uint8_t>
inline __device__ void cudaSort2(T& a, T& b) {
  if (a > b) {
    T c(a);
    a = b;
    b = c;
  }
};

inline void print_dim3(dim3& d) {
  printf("<%d, %d, %d>\n", d.x, d.y, d.z);
};

#endif // _CUDA_UTIL_H_
