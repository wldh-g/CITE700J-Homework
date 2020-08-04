#ifndef _TASK_H_
#define _TASK_H_

namespace task {
  void all();
  void accumulation_16b(bool enable_simd = true);
  void inversion_8b(bool enable_simd = true);
  void flipx_flipy(bool enable_simd = true);
  void addition_8b_16b(bool enable_simd = true);
  void transposition_8b(bool enable_simd = true);
  void transposition_multibit(bool enable_simd = true);
  void general_convolution_unsigned(bool enable_simd = true);
  void general_convolution_signed(bool enable_simd = true);
  void sobel_filter(bool enable_simd = true);
  void scaling(bool enable_simd = true);
  void median_filter(bool enable_simd = true);


  #ifdef __INTEL_COMPILER
  void accumulation_16b_tbb(bool enable_simd = true);
  void scaling_unrolled(bool save_results = false);
  #endif
}

#endif // _TASK_H_
