#ifndef _FUNC_H_
#define _FUNC_H_

#include <cstdint>
#include "Filters.h"

#ifdef _CUDA
#include "Functions.cuh"
#else
#define __FUNC__(name) c::name, simd::name
#endif

namespace c {
  void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size);

  void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
  void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);

  void dot(uint8_t* in1, uint8_t* in2, uint64_t* out, size_t x_size, size_t y_size);

  void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size);
  void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size);

  void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size);
  void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size);
  void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size);
  void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size);

  void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void multiply(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);

  void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  #ifdef __INTEL_COMPILER
  void scale_13_unroll64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_13_unroll512(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_24_unroll64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_24_unroll512(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  #endif
}

namespace simd {
  void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size);

  void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);
  void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size);

  void dot(uint8_t* in1, uint8_t* in2, uint64_t* out, size_t x_size, size_t y_size);

  void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size);
  void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size);

  void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size);
  void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size);
  void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size);
  void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size);

  void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);

  void multiply(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size);

  void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
  void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size);
}

#endif // _FUNC_H_
