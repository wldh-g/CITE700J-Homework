#include <iostream>
#include "Tasks.h"

using std::cout;
using std::endl;

void task::all() {
  #ifndef _CUDA
  task::accumulation_16b(true);
  cout << endl;
  #endif

  #ifdef __INTEL_COMPILER
  task::accumulation_16b_tbb(true);
  cout << endl;
  #endif

  task::addition_8b_16b(true);
  cout << endl;
  
  task::flipx_flipy(true);
  cout << endl;
  
  #ifndef _CUDA
  task::general_convolution_signed(true);
  cout << endl;
  task::general_convolution_unsigned(true);
  cout << endl;
  #endif

  task::inversion_8b(true);
  cout << endl;
  
  #ifndef _CUDA
  task::median_filter(true);
  cout << endl;
  #endif
  
  #ifndef _CUDA
  task::scaling(true);
  cout << endl;
  #ifdef __INTEL_COMPILER
  task::scaling_unrolled(true);
  cout << endl;
  #endif
  #endif
  
  #ifndef _CUDA
  task::sobel_filter(true);
  cout << endl;
  #endif
  
  #ifndef _CUDA
  task::transposition_8b(true);
  cout << endl;
  task::transposition_multibit(true);
  cout << endl;
  #endif
  
  cout << "Done." << endl;
};
