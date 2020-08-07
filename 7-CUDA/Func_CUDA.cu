#include "Core.h"
#include "Functions.cuh"
#include "Util.cuh"

/********************
 ** CUDA Functions **
 ********************/

///////////////
// Inversion //
///////////////

__global__ void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = y_pos * x_size + x_pos;
  
  if (x_pos < x_size) {
    out[index] = 255 - in[index];
  }
};
void cuda::invert_8b __make_host__(invert_8b, uint8_t, uint8_t);

//////////////////
// Accumulation //
//////////////////

void cuda::accumulation_16b __cuda_todo__(accumulation_16b, uint16_t, uint64_t);

//////////////
// Flipping //
//////////////

__global__ void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;

  if (x_pos < x_size) {
    out[y_pos * x_size + x_size - x_pos - 1] = in[x_size * y_pos + x_pos];
  }
};
void cuda::xflip __make_host__(xflip, uint8_t, uint8_t);

__global__ void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;

  if (x_pos < x_size) {
    out[(y_size - y_pos - 1) * x_size + x_pos] = in[x_size * y_pos + x_pos];
  }
};
void cuda::yflip __make_host__(yflip, uint8_t, uint8_t);

//////////////
// Addition //
//////////////

__global__ void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;

  if (x_pos < x_size) {
    out[index] = in1[index] / 2 + in2[index] / 2;
  }
};
void cuda::add_8b __make_host_2__(add_8b, uint8_t, uint8_t);

__global__ void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;

  if (x_pos < x_size) {
    out[index] = (uint16_t)in1[index] + (uint16_t)in2[index];
  }
};
void cuda::add_16b __make_host_2__(add_16b, uint8_t, uint16_t);

/////////////////
// Dot Product //
/////////////////

__global__ void dot(uint8_t* in1, uint8_t* in2, uint64_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;
  /*__shared__ uint64_t good_boy[512];
  if (index < 512) good_boy[index] = 0;
  __syncthreads();

  if (x_pos < x_size) {
    // printf("%llx %llx\n", (uint64_t)in1[index], (uint64_t)in1[index]);
    atomicAdd(&good_boy[index % 512], (uint64_t)in1[index] * (uint64_t)in2[index]);
  }
  __syncthreads();
  if (index < 512) {
    printf("%llx ", good_boy[index]);
    atomicAdd(out, good_boy[index]);
  }*/
  if (x_pos < x_size) {
    atomicAdd(out, (uint64_t)in1[index] * (uint64_t)in2[index]);
  }
};
void cuda::dot __make_host_2__(dot, uint8_t, uint64_t);

///////////////
// Transpose //
///////////////

__global__ void transpose8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;

  if (x_pos < x_size) {
    out[x_pos * x_size + y_pos] = in[x_size * y_pos + x_pos];
  }
};
void cuda::transpose_line_by_line __make_host__(transpose8, uint8_t, uint8_t);
void cuda::transpose_block_8 __make_host__(transpose8, uint8_t, uint8_t);
void cuda::transpose_block_16 __make_host__(transpose8, uint8_t, uint8_t);
void cuda::transpose_block_32 __make_host__(transpose8, uint8_t, uint8_t);
void cuda::transpose_block_64 __make_host__(transpose8, uint8_t, uint8_t);
void cuda::transpose_block_128 __make_host__(transpose8, uint8_t, uint8_t);

__global__ void transpose16(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;

  if (x_pos < x_size) {
    out[x_pos * x_size + y_pos] = in[x_size * y_pos + x_pos];
  }
};
void cuda::transpose16_block_8 __make_host__(transpose16, uint16_t, uint16_t);

__global__ void transpose32(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;

  if (x_pos < x_size) {
    out[x_pos * x_size + y_pos] = in[x_size * y_pos + x_pos];
  }
};
void cuda::transpose32_block_4 __make_host__(transpose32, uint32_t, uint32_t);

/////////////////
// Convolution //
/////////////////

void cuda::conv_zp_unsigned __cuda_todo_f__(conv_zp_unsigned, uint8_t, int8_t, uint8_t);
void cuda::conv_zp_signed __cuda_todo_f__(conv_zp_signed, uint8_t, int8_t, int8_t);
void cuda::conv_be_unsigned __cuda_todo_f__(conv_be_unsigned, uint8_t, int8_t, uint8_t);
void cuda::conv_be_signed __cuda_todo_f__(conv_be_signed, uint8_t, int8_t, int8_t);

//////////////////
// Sobel Filter //
//////////////////

void cuda::sobel_zp __cuda_todo__(sobel_zp, uint8_t, uint8_t);
void cuda::sobel_be __cuda_todo__(sobel_be, uint8_t, uint8_t);

///////////////////
// Median Filter //
///////////////////

void cuda::median_3tap __cuda_todo__(median_3tap, uint8_t, uint8_t);
void cuda::median_5tap __cuda_todo__(median_5tap, uint8_t, uint8_t);
void cuda::median_3by3 __cuda_todo__(median_3by3, uint8_t, uint8_t);

////////////////////
// Multiplication //
////////////////////

__global__ void multiply(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;

  out[index] = 0;
  if (x_pos < x_size) {
    for (size_t i = 0; i < x_size; i += 1) {
      out[index] += in1[y_pos * x_size + i] * in2[i * x_size + x_pos];
    }
  }
};
void cuda::multiply __make_host_2__(multiply, uint8_t, uint8_t);

/////////////
// Scaling //
/////////////

void cuda::scale_05 __cuda_todo__(scale_05, uint8_t, uint8_t);
void cuda::scale_13 __cuda_todo__(scale_13, uint8_t, uint8_t);
void cuda::scale_24 __cuda_todo__(scale_24, uint8_t, uint8_t);
