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

#define __TASK_NOPE__ false, false, false
#define __TASK_CUDA__ false, false, true
#define __TASK_SIMD__ false, true, false
#define __TASK_SIMD_CUDA__ false, true, true
#define __TASK_C__ true, false, false
#define __TASK_C_CUDA__ true, false, true
#define __TASK_C_SIMD__ true, true, false
#define __TASK_C_SIMD_CUDA__ true, true, true

#define __TASK_C1_C2__ true, true, false
#else
#define __ENABLE_ARG__ bool enable_c, bool enable_simd
#define __ENABLE_SET__ enable_c, enable_simd
#define __TASK_ARG_CODE__ __ENABLE_ARG__, bool do_verify, bool do_save
#define __TASK_ARG_H__ bool enable_c = true, bool enable_simd = true, bool do_verify = true, \
                       bool do_save = true
#define __TASK_TEST_CNT__ 2
#define __TASK_TEST_LABEL__ "C", "SIMD"

#define __TASK_NOPE__ false, false
#define __TASK_CUDA__ false, false
#define __TASK_SIMD__ false, true
#define __TASK_SIMD_CUDA__ false, true
#define __TASK_C__ true, false
#define __TASK_C_CUDA__ true, false
#define __TASK_C_SIMD__ true, true
#define __TASK_C_SIMD_CUDA__ true, true

#define __TASK_C1_C2__ true, true
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
  void multiplication(__TASK_ARG_H__);

  #ifdef __INTEL_COMPILER
  void accumulation_16b_tbb(__TASK_ARG_H__);
  void scaling_unrolled(__TASK_ARG_H__);
  #endif
}

#endif // _TASK_H_
