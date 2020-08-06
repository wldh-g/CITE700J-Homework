#ifndef _CUDA_FUNC_H_
#define _CUDA_FUNC_H_

#include <cstdint>
#include <cuda_runtime.h>
#include "Filters.h"

#define __FUNC__(name) c::name, simd::name, cuda::name

namespace cuda {
  extern void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                        dim3& threads);

  extern void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size,
                               dim3&blocks, dim3& threads);

  extern void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                    dim3& threads);
  extern void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                    dim3& threads);

  extern void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size,
                     dim3& blocks, dim3& threads);
  extern void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size,
                      dim3& blocks, dim3& threads);

  extern void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                     dim3& blocks, dim3& threads);
  extern void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                dim3& blocks, dim3& threads);
  extern void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                 dim3& blocks, dim3& threads);
  extern void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                 dim3& blocks, dim3& threads);
  extern void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                 dim3& blocks, dim3& threads);
  extern void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size,
                                  dim3& blocks, dim3& threads);
  extern void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size,
                                  dim3& blocks, dim3& threads);
  extern void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size,
                                  dim3& blocks, dim3& threads);
   
  extern void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                               size_t x_size, size_t y_size, dim3& blocks, dim3& threads);
  extern void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out,
                             size_t x_size, size_t y_size, dim3& blocks, dim3& threads);
  extern void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                               size_t x_size, size_t y_size, dim3& blocks, dim3& threads);
  extern void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out,
                             size_t x_size, size_t y_size, dim3& blocks, dim3& threads);
  
  extern void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                       dim3& threads);
  extern void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                       dim3& threads);
  
  extern void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                          dim3& threads);
  extern void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                          dim3& threads);
  extern void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                          dim3& threads);
  
  extern void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                       dim3& threads);
  extern void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                       dim3& threads);
  extern void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, dim3& blocks,
                       dim3& threads);
}

#endif // _CUDA_FUNC_H_
