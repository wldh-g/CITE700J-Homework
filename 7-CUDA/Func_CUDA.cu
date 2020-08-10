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
  __block__ uint64_t bob;
  bob = 0;
  __syncthreads();

  if (x_pos < x_size) {
    atomicAdd(&bob, (uint64_t)in1[index] * (uint64_t)in2[index]);
  }
  __syncthreads();

  __for_each_block__ {
    atomicAdd(out, bob);
  }
};
void cuda::dot __make_host_2__(dot, uint8_t, uint64_t);

///////////////
// Histogram //
///////////////

__global__ void histogram_8bin(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  __block__ uint64_t carol[8];
  carol[x_pos % 8] = 0;
  __syncthreads();
  atomicAdd(carol + (in[x_pos + __y_pos__ * x_size] % 8), 1);
  __syncthreads();
  if (threadIdx.x == 0) {
    atomicAdd(out, *(carol));
    atomicAdd(out + 1, *(carol + 1));
    atomicAdd(out + 2, *(carol + 2));
    atomicAdd(out + 3, *(carol + 3));
    atomicAdd(out + 4, *(carol + 4));
    atomicAdd(out + 5, *(carol + 5));
    atomicAdd(out + 6, *(carol + 6));
    atomicAdd(out + 7, *(carol + 7));
  }
};
void cuda::histogram_8bin __make_host__(histogram_8bin, uint16_t, uint64_t);

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

__global__ void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                 size_t x_size, size_t y_size) {
  /* 
   * This convolution implements element-wise convolution and uses exact number of threads. [1 & 2]
   * Below assumptions are considered in this convolution implementation.
   *  - Assumption 1 : GPU cannot expect the size and traits of the filter.
   *  - Assumption 2 : The only known fact is that the shape of the filter is square.
   *  - Assumption 3 : GPU cannot expect the size and traits of the image.
   */
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;
  uint32_t x_bud = blockDim.x + 2 * filter->bud_size;
  extern __block__ uint8_t alice[]; // shape : (blockDim.x + filter->size - 1, filter->size)
  
  // Set all zero to all
  for (size_t i = 0; i < filter->size2; i += 1) {
    alice[threadIdx.x * filter->size + i] = 0;
  }
  __syncthreads();

  // Fill the alice
  size_t alice_x_size = blockDim.x + filter->size - 1;
  for (int alice_y_pos = 0; alice_y_pos < filter->size; alice_y_pos += 1) {
    int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
    if (src_y_pos >= 0 && src_y_pos < y_size) {
      alice[alice_y_pos * alice_x_size + threadIdx.x + filter->bud_size]
        = in[src_y_pos * x_size + x_pos];
    }
  }
  if (blockIdx.x != 0 && threadIdx.x < filter->bud_size) {
    for (int alice_y_pos = 0; alice_y_pos < filter->size; alice_y_pos += 1) {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
      if (src_y_pos >= 0 && src_y_pos < y_size) {
        alice[alice_y_pos * alice_x_size + threadIdx.x] = in[src_y_pos * x_size +
          (size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
      }
    }
  }
  if ((gridDim.x - 1) > blockIdx.x && threadIdx.x < filter->bud_size) {
    for (int alice_y_pos = 0; alice_y_pos < filter->size; alice_y_pos += 1) {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
      if (src_y_pos >= 0 && src_y_pos < y_size) {
        alice[((size_t)alice_y_pos + 1) * alice_x_size - filter->bud_size + threadIdx.x]
          = in[src_y_pos * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
      }
    }
  }
  __syncthreads();

  // Calculate convolution
  int32_t sum = 0;
  for (size_t fy = 0; fy < filter->size; fy += 1) {
    for (size_t fx = 0; fx < filter->size; fx += 1) {
      sum += filter->kernel[fy * filter->size + fx] * alice[threadIdx.x + fy * x_bud + fx];
    }
  }
  sum /= filter->kernel_sum;
  *(out + index) = sum >= 0 ? (sum <= 255 ? sum : 255) : 0;
};
void cuda::conv_zp_unsigned __make_host_f__(conv_zp_unsigned, uint8_t, int8_t, uint8_t);

__global__ void conv_zb_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                 size_t x_size, size_t y_size) {
  /*
   * This convolution implements element-wise convolution using bigger threads block. [3]
   * Below assumptions are considered in this convolution implementation.
   *  - Assumption 1 : GPU cannot expect the size and traits of the filter.
   *  - Assumption 2 : The only known fact is that the shape of the filter is square.
   *  - Assumption 3 : GPU cannot expect the size and traits of the image.
   */
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;
  uint32_t x_bud = blockDim.x + 2 * filter->bud_size;
  int alice_y_pos = threadIdx.z;
  extern __block__ uint8_t alice[]; // shape : (blockDim.x + filter->size - 1, filter->size)

  // Set all zero to all
  for (size_t i = 0; i < filter->size2; i += 1) {
    alice[threadIdx.x * filter->size + i] = 0;
  }
  __syncthreads();

  // Fill the alice
  size_t alice_x_size = blockDim.x + filter->size - 1;
  int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
  if (src_y_pos >= 0 && src_y_pos < y_size) {
    alice[alice_y_pos * alice_x_size + threadIdx.x + filter->bud_size]
      = in[src_y_pos * x_size + x_pos];
  }
  if (blockIdx.x != 0 && threadIdx.x < filter->bud_size) {
    int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
    if (src_y_pos >= 0 && src_y_pos < y_size) {
      alice[alice_y_pos * alice_x_size + threadIdx.x] = in[src_y_pos * x_size +
        (size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
    }
  }
  if ((gridDim.x - 1) > blockIdx.x && threadIdx.x < filter->bud_size) {
    int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + alice_y_pos;
    if (src_y_pos >= 0 && src_y_pos < y_size) {
      alice[((size_t)alice_y_pos + 1) * alice_x_size - filter->bud_size + threadIdx.x]
        = in[src_y_pos * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
    }
  }
  __syncthreads();

  // Calculate convolution
  int32_t sum = 0;
  for (size_t fy = 0; fy < filter->size; fy += 1) {
    for (size_t fx = 0; fx < filter->size; fx += 1) {
      sum += filter->kernel[fy * filter->size + fx] * alice[threadIdx.x + fy * x_bud + fx];
    }
  }
  sum /= filter->kernel_sum;
  *(out + index) = sum >= 0 ? (sum <= 255 ? sum : 255) : 0;
};
void cuda::conv_zb_unsigned __make_host_f__(conv_zb_unsigned, uint8_t, int8_t, uint8_t);

void cuda::conv_zp_signed __cuda_todo_f__(conv_zp_signed, uint8_t, int8_t, int8_t);

__global__ void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                 size_t x_size, size_t y_size) {
  /*
   * This convolution implements element-wise convolution and uses exact number of threads. [1 & 2]
   * Below assumptions are considered in this convolution implementation.
   *  - Assumption 1 : GPU cannot expect the size and traits of the filter.
   *  - Assumption 2 : The only known fact is that the shape of the filter is square.
   *  - Assumption 3 : GPU cannot expect the size and traits of the image.
   */
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;
  uint32_t x_bud = blockDim.x + 2 * filter->bud_size;
  extern __block__ uint8_t dave[]; // shape : (blockDim.x + filter->size - 1, filter->size)

  // Fill the dave
  size_t dave_x_size = blockDim.x + filter->size - 1;
  uint32_t ptr;
  uint8_t val;
  for (int dave_y_pos = 0; dave_y_pos < filter->size; dave_y_pos += 1) {
    int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
    if (src_y_pos < 0) {
      ptr = x_pos;
    } else if (src_y_pos >= y_size) {
      ptr = (y_size - 1) * x_size + x_pos;
    } else {
      ptr = src_y_pos * x_size + x_pos;
    }
    dave[dave_y_pos * dave_x_size + threadIdx.x + filter->bud_size] = in[ptr];
  }
  if (threadIdx.x < filter->bud_size) {
    if (blockIdx.x != 0) {
      for (int dave_y_pos = 0; dave_y_pos < filter->size; dave_y_pos += 1) {
        int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
        if (src_y_pos < 0) {
          val = in[(size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
        } else if (src_y_pos >= y_size) {
          val = in[x_size * (y_size - 1) + (size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
        } else {
          val = in[src_y_pos * x_size + (size_t)blockDim.x * blockIdx.x - filter->bud_size
            + threadIdx.x];
        }
        dave[dave_y_pos * dave_x_size + threadIdx.x] = val;
      }
    } else {
      for (int dave_y_pos = 0; dave_y_pos < filter->size; dave_y_pos += 1) {
        int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
        if (src_y_pos < 0) {
          ptr = threadIdx.x;
        } else if (src_y_pos >= y_size) {
          ptr = (y_size - 1) * x_size + threadIdx.x;
        } else {
          ptr = src_y_pos * x_size + threadIdx.x;
        }
        dave[dave_y_pos * dave_x_size + threadIdx.x] = in[ptr];
      }
    }
    if ((gridDim.x - 1) > blockIdx.x) {
      for (int dave_y_pos = 0; dave_y_pos < filter->size; dave_y_pos += 1) {
        int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
        if (src_y_pos < 0) {
          val = in[((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
        } else if (src_y_pos >= y_size) {
          val = in[(y_size - 1) * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
        } else {
          val = in[src_y_pos * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
        }
        dave[((size_t)dave_y_pos + 1) * dave_x_size - filter->bud_size + threadIdx.x] = val;
      }
    } else {
      for (int dave_y_pos = 0; dave_y_pos < filter->size; dave_y_pos += 1) {
        int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
        if (src_y_pos < 0) {
          ptr = x_size - filter->bud_size + threadIdx.x;
        } else if (src_y_pos >= y_size) {
          ptr = x_size * y_size - filter->bud_size + threadIdx.x;
        } else {
          ptr = (src_y_pos + 1) * x_size - filter->bud_size + threadIdx.x;
        }
        dave[((size_t)dave_y_pos + 1) * dave_x_size - filter->bud_size + threadIdx.x] = in[ptr];
      }
    }
  }
  __syncthreads();

  // Calculate convolution
  int32_t sum = 0;
  for (size_t fy = 0; fy < filter->size; fy += 1) {
    for (size_t fx = 0; fx < filter->size; fx += 1) {
      sum += filter->kernel[fy * filter->size + fx] * dave[threadIdx.x + fy * x_bud + fx];
    }
  }
  sum /= filter->kernel_sum;
  *(out + index) = sum >= 0 ? (sum <= 255 ? sum : 255) : 0;
};
void cuda::conv_be_unsigned __make_host_f__(conv_be_unsigned, uint8_t, int8_t, uint8_t);

__global__ void conv_bb_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                 size_t x_size, size_t y_size) {
  /*
   * This convolution implements element-wise convolution using bigger threads block. [3]
   * Below assumptions are considered in this convolution implementation.
   *  - Assumption 1 : GPU cannot expect the size and traits of the filter.
   *  - Assumption 2 : The only known fact is that the shape of the filter is square.
   *  - Assumption 3 : GPU cannot expect the size and traits of the image.
   */
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;
  uint32_t x_bud = blockDim.x + 2 * filter->bud_size;
  int dave_y_pos = threadIdx.z;
  extern __block__ uint8_t dave[]; // shape : (blockDim.x + filter->size - 1, filter->size)

  // Fill the dave
  size_t dave_x_size = blockDim.x + filter->size - 1;
  uint32_t ptr;
  uint8_t val;
  int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
  if (src_y_pos < 0) {
    ptr = x_pos;
  } else if (src_y_pos >= y_size) {
    ptr = (y_size - 1) * x_size + x_pos;
  } else {
    ptr = src_y_pos * x_size + x_pos;
  }
  dave[dave_y_pos * dave_x_size + threadIdx.x + filter->bud_size] = in[ptr];
  if (threadIdx.x < filter->bud_size) {
    if (blockIdx.x != 0) {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
      if (src_y_pos < 0) {
        val = in[(size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
      } else if (src_y_pos >= y_size) {
        val = in[x_size * (y_size - 1) + (size_t)blockDim.x * blockIdx.x - filter->bud_size + threadIdx.x];
      } else {
        val = in[src_y_pos * x_size + (size_t)blockDim.x * blockIdx.x - filter->bud_size
          + threadIdx.x];
      }
      dave[dave_y_pos * dave_x_size + threadIdx.x] = val;
    } else {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
      if (src_y_pos < 0) {
        ptr = threadIdx.x;
      } else if (src_y_pos >= y_size) {
        ptr = (y_size - 1) * x_size + threadIdx.x;
      } else {
        ptr = src_y_pos * x_size + threadIdx.x;
      }
      dave[dave_y_pos * dave_x_size + threadIdx.x] = in[ptr];
    }
    if ((gridDim.x - 1) > blockIdx.x) {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
      if (src_y_pos < 0) {
        val = in[((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
      } else if (src_y_pos >= y_size) {
        val = in[(y_size - 1) * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
      } else {
        val = in[src_y_pos * x_size + ((size_t)blockIdx.x + 1) * blockDim.x + threadIdx.x];
      }
      dave[((size_t)dave_y_pos + 1) * dave_x_size - filter->bud_size + threadIdx.x] = val;
    } else {
      int src_y_pos = (int)blockIdx.y - (int)filter->bud_size + dave_y_pos;
      if (src_y_pos < 0) {
        ptr = x_size - filter->bud_size + threadIdx.x;
      } else if (src_y_pos >= y_size) {
        ptr = x_size * y_size - filter->bud_size + threadIdx.x;
      } else {
        ptr = (src_y_pos + 1) * x_size - filter->bud_size + threadIdx.x;
      }
      dave[((size_t)dave_y_pos + 1) * dave_x_size - filter->bud_size + threadIdx.x] = in[ptr];
    }
  }
  __syncthreads();

  // Calculate convolution
  int32_t sum = 0;
  for (size_t fy = 0; fy < filter->size; fy += 1) {
    for (size_t fx = 0; fx < filter->size; fx += 1) {
      sum += filter->kernel[fy * filter->size + fx] * dave[threadIdx.x + fy * x_bud + fx];
    }
  }
  sum /= filter->kernel_sum;
  *(out + index) = sum >= 0 ? (sum <= 255 ? sum : 255) : 0;
};
void cuda::conv_bb_unsigned __make_host_f__(conv_bb_unsigned, uint8_t, int8_t, uint8_t);

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

__global__ void median_5tap_horz(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;

  if (x_pos < x_size - 4) {
    uint8_t point1 = in[index];
    uint8_t point2 = in[index + 1];
    uint8_t point3 = in[index + 2];
    uint8_t point4 = in[index + 3];
    uint8_t point5 = in[index + 4];
    cudaSort2(point1, point2);
    cudaSort2(point4, point5);
    cudaSort2(point3, point5);
    cudaSort2(point3, point4);
    cudaSort2(point1, point4);
    cudaSort2(point1, point3);
    cudaSort2(point2, point5);
    cudaSort2(point2, point4);
    cudaSort2(point2, point3);
    out[index] = point3;
  }
};
void cuda::median_5tap_horz __make_host__(median_5tap_horz, uint8_t, uint8_t);

void cuda::median_3by3 __cuda_todo__(median_3by3, uint8_t, uint8_t);

////////////////////
// Multiplication //
////////////////////

__global__ void multiply(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = x_pos + y_pos * x_size;

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
