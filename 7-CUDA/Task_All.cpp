#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

void task::all() {
  
  task::accumulation_16b(__TASK_C_SIMD__);
  cout << endl;

  #ifdef __INTEL_COMPILER
  task::accumulation_16b_tbb(__TASK_C_SIMD__); // TODO
  cout << endl;
  #endif

  task::addition_8b_16b(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  task::flipx_flipy(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  task::general_convolution_signed(__TASK_C__);
  cout << endl;
  task::general_convolution_unsigned(__TASK_C__);
  cout << endl;

  task::inversion_8b(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  task::median_filter(__TASK_C_SIMD__);
  cout << endl;

  task::multiplication(__TASK_C_CUDA__);
  cout << endl;
  
  //task::scaling(__TASK_C_SIMD__);
  cout << endl;
  #ifdef __INTEL_COMPILER
  //task::scaling_unrolled(__TASK_C1_C2__); // TODO
  cout << endl;
  #endif
  
  task::sobel_filter(__TASK_C__);
  cout << endl;
  
  task::transposition_8b(__TASK_C__);
  cout << endl;
  task::transposition_multibit(__TASK_C_SIMD_CUDA__);
  cout << endl;
  
  cout << "Done." << endl;
};
