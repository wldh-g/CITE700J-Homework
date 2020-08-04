#ifndef _TASK_H_
#define _TASK_H_

#ifdef _CUDA
#define __ENABLE_ARG__ bool enable_c, bool enable_simd, bool enable_cuda
#define __ENABLE_SET__ enable_c, enable_simd, enable_cuda
#define __TASK_ARG_CODE__ __ENABLE_ARG__, bool do_verify, bool do_save
#define __TASK_ARG_H__ bool enable_c = true, bool enable_simd = true, bool enable_cuda = true, \
                       bool do_verify = true, bool do_save = true
#define __TASK_TEST_CNT__ 3
#define __TASK_TEST_LABEL__ "C", "SIMD", "CUDA"
#elif
#define __ENABLE_ARG__ bool enable_c, bool enable_simd
#define __ENABLE_SET__ enable_c, enable_simd
#define __TASK_ARG_CODE__ __ENABLE_ARG__, bool do_verify, bool do_save
#define __TASK_ARG_H__ bool enable_c = true, bool enable_simd = true, bool do_verify = true, \
                       bool do_save = true
#define __TASK_TEST_CNT__ 2
#define __TASK_TEST_LABEL__ "C", "SIMD"
#endif

namespace task {
  void all();

  void accumulation_16b(__TASK_ARG_H__);
  void inversion_8b(__TASK_ARG_H__);
  void flipx_flipy(__TASK_ARG_H__);
  void addition_8b_16b(__TASK_ARG_H__);
  void transposition_8b(__TASK_ARG_H__);
  void transposition_multibit(__TASK_ARG_H__);
  void general_convolution_unsigned(__TASK_ARG_H__);
  void general_convolution_signed(__TASK_ARG_H__);
  void sobel_filter(__TASK_ARG_H__);
  void scaling(__TASK_ARG_H__);
  void median_filter(__TASK_ARG_H__);

  #ifdef __INTEL_COMPILER
  void accumulation_16b_tbb(__TASK_ARG_H__);
  void scaling_unrolled(__TASK_ARG_H__);
  #endif
}

#endif // _TASK_H_
