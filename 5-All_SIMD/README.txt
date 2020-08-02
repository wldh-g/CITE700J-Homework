Homework 05
===========

Goal :
  Implement median filter, image value-scaling, accumulation, addition,
  flipping and tranposition using SIMD functions

Explanation :
  This program will read binary images in `images` directory and apply various
  image processing functions implemented using generic C and SIMD commands, and
  will compare the performance between them. Also, the results of those image
  processing from generic C code and SIMD code will be compared to check its
  validity, and then they will be exported in `output` directory.

Build Requirement : C++17 or later

Runtime CPU Requirements : SSE2, SSSE3, AVX, AVX2

Tested Environment :
  - Compiler : MSVC 19.26.28806 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  >

  Note — in above run, I repeated 10000 times to measure the execution time.

Done.

2020. 08. 02. Jio Gim
