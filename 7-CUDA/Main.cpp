﻿#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
  std::filesystem::create_directory(OUTPUT_DIR);

  #ifdef __INTEL_COMPILER
  std::cout << "Compiled with ICL." << std::endl << std::endl;
  #else
  #ifdef _CUDA
  std::cout << "Compiled with NVCC." << std::endl;
  std::cout << "CUDA time measurements do not include cudaMemcpy time." << std::endl << std::endl;
  #else
  #ifdef _MSC_VER
  std::cout << "Compiled with MSVC." << std::endl << std::endl;
  #else
  std::cout << "Compiled with unknown compiler." << std::endl << std::endl;
  #endif
  #endif
  #endif

  // Tasks
  task::all(true);

  return __exit(0);
}
