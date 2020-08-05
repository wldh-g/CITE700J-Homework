#ifndef _CUDA_FUNC_H_
#define _CUDA_FUNC_H_

#include <cstdint>
#include <cuda_profiler_api.h>
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include "Filters.h"

namespace cuda {
  __global__ void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  __global__ void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size);

  __global__ void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  __global__ void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);

  __global__ void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size);
  __global__ void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size);
   
  __global__ void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                   size_t x_size, size_t y_size);
  __global__ void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out,
                                 size_t x_size, size_t y_size);
  __global__ void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                                   size_t x_size, size_t y_size);
  __global__ void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out,
                                 size_t x_size, size_t y_size);
  
  __global__ void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  
  __global__ void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  
  __global__ void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  __global__ void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
}

#endif // _CUDA_FUNC_H_
