Homework 06
===========

Goal :
  Accumulation with Threading Building Blocks

Explanation :
  This program will do accumulation with and without Threading Building Blocks,
  controlling the number of threads. The performance will be measured as
  execution time, and will be compared.

File Descriptions :
  - Functions.h, Func_*.cpp : Image processing functions required by homework
  - Core.h, Core.cpp : Core function launcher, tester, and file handlers
  - Tasks.h, Task_*.cpp : Each task functions who repeats test and saves result
  - Filters.h, Filters.cpp : Filters used to convolution and Sobel filter
  - Timer.h, Timer.cpp : Timing functions provided by professor
  - Util.h : Utilities used to test, develop and implement features
  - Main.cpp : Contains main function and defines what tasks will be performed
               in this homework

Build Requirements : C++17 or later, Intel® TBB (just that or oneAPI's one)

Runtime CPU Requirements : SSE2, SSSE3, AVX, AVX2

Tested Environment :
  - Compiler : Intel Compiler 19.1.2.254 Build 20200623 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > Compiled with ICL.
  > 
  > <Accumulation 16-bit>
  > Opening image for accumulation... OK
  > Testing accumulation... C 0.0341597 ms > SIMD 0.0163526 ms
  > Verifying results... OK
  > 
  > <Accumulation 16-bit w/o Intel® TBB>
  > Opening image for accumulation... OK
  > Testing accumulation (without TBB)... C 594.283 ms > SIMD 128.162 ms
  > Verifying results... OK
  > 
  > <Accumulation 16-bit w/ Intel® TBB>
  > Note : TBB default number of threads in this environment is 16
  > Testing accumulation (nthread=1)... C 275.459 ms > SIMD 127.91 ms
  > Testing accumulation (nthread=2)... C 140.734 ms > SIMD 65.3447 ms
  > Testing accumulation (nthread=4)... C 76.0509 ms > SIMD 34.8979 ms
  > Testing accumulation (nthread=8)... C 51.3741 ms > SIMD 23.2547 ms
  > Testing accumulation (nthread=16)... C 38.0274 ms > SIMD 18.2891 ms
  > Testing accumulation (nthread=32)... C 37.5332 ms > SIMD 18.1957 ms
  > Testing accumulation (nthread=64)... C 38.5966 ms > SIMD 18.2606 ms
  > Testing accumulation (nthread=128)... C 37.1184 ms > SIMD 18.2233 ms
  > Testing accumulation (nthread=256)... C 37.4672 ms > SIMD 18.2992 ms
  > Testing accumulation (nthread=512)... C 36.9645 ms > SIMD 18.2656 ms
  > Testing accumulation (nthread=1024)... C 36.8351 ms > SIMD 18.3874 ms
  > Verifying results... OK

  Note — I repeated each test 200 * 500 = 100k times to measure the execution
         time.
  Note — It was observed that the general error on the execution time was about
         0.01 ms.

Done.

2020. 08. 04. Jio Gim
