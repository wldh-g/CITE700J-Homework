#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

void task::all(bool do_only_fully_available_tasks) {
  // Put in "if (__TASK_TEST_CNT__ == 2)" if no CUDA implementation exists
  // Put in "#ifdef __INTEL_COMPILER" if ICL is required
  
  if (__TASK_TEST_CNT__ == 2) {
    task::accumulation_16b(__TASK_C_SIMD__);
    cout << endl;

    #ifdef __INTEL_COMPILER
    task::accumulation_16b_tbb(__TASK_C_SIMD__);
    cout << endl;
    #endif
  }

  task::addition_8b_16b(__TASK_C_SIMD_CUDA__);
  cout << endl;

  task::dot_product(__TASK_C_CUDA__);
  cout << endl;

  task::histogram_8bin(__TASK_C_CUDA__);
  cout << endl;
  
  task::flipx_flipy(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  if (__TASK_TEST_CNT__ == 2) {
    task::general_convolution_signed(__TASK_C__);
    cout << endl;
  }

  task::general_convolution_unsigned(__TASK_C_CUDA__);
  cout << endl;

  task::inversion_8b(__TASK_C_SIMD_CUDA__);
  cout << endl;
 
  if (__TASK_TEST_CNT__ == 2) {
    task::median_filter(__TASK_C_SIMD__);
    cout << endl;
  }

  task::median_filter_horz(__TASK_C_CUDA__);
  cout << endl;

  task::multiplication(__TASK_C_CUDA__);
  cout << endl;
  
  if (__TASK_TEST_CNT__ == 2) {
    task::scaling(__TASK_C_SIMD__);
    cout << endl;

    #ifdef __INTEL_COMPILER
    task::scaling_unrolled(__TASK_C1_C2__);
    cout << endl;
    #endif
  }
  
  if (__TASK_TEST_CNT__ == 2) {
    task::sobel_filter(__TASK_C__);
    cout << endl;
  }
  
  if (__TASK_TEST_CNT__ == 2) {
    task::transposition_8b(__TASK_C__);
    cout << endl;
  }

  task::transposition_multibit(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  cout << "Done." << endl;
};
