#ifndef _CUDA_UTIL_H_
#define _CUDA_UTIL_H_

#define __x_pos__ blockDim.x * blockIdx.x + threadIdx.x
#define __y_pos__ blockIdx.y
#define __x_len__ blockDim.x * gridDim.x
#define __y_len__ gridDim.y

inline void print_dim3(dim3& d) {
  printf("<%d, %d, %d>\n", d.x, d.y, d.z);
};

#endif // _CUDA_UTIL_H_
