#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

void task::all() {
  #ifndef _CUDA
  task::accumulation_16b();
  cout << endl;
  #endif

  #ifdef __INTEL_COMPILER
  task::accumulation_16b_tbb();
  cout << endl;
  #endif

  //task::addition_8b_16b();
  //cout << endl;
  
  //task::flipx_flipy();
  //cout << endl;
  
  #ifndef _CUDA
  task::general_convolution_signed();
  cout << endl;
  task::general_convolution_unsigned();
  cout << endl;
  #endif

  task::inversion_8b();
  cout << endl;
  
  #ifndef _CUDA
  task::median_filter();
  cout << endl;
  #endif
  
  #ifndef _CUDA
  task::scaling();
  cout << endl;
  #ifdef __INTEL_COMPILER
  task::scaling_unrolled();
  cout << endl;
  #endif
  #endif
  
  #ifndef _CUDA
  task::sobel_filter();
  cout << endl;
  #endif
  
  task::transposition_8b();
  cout << endl;
  #ifndef _CUDA
  task::transposition_multibit();
  cout << endl;
  #endif
  
  cout << "Done." << endl;
};
