#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
  std::filesystem::create_directory("output");

  #ifdef __INTEL_COMPILER
  std::cout << "Compiled with ICL." << std::endl << std::endl;
  #else
  #ifdef _MSC_VER
  std::cout << "Compiled with MSVC." << std::endl << std::endl;
  #else
  std::cout << "Compiled with unknown compiler." << std::endl << std::endl;
  #endif
  #endif

  // Tasks
  // task::all();

  task::accumulation_16b(true);
  std::cout << std::endl;
  task::accumulation_16b_tbb(true);
  std::cout << std::endl;

  return __exit(0);
}
