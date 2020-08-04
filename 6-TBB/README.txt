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
  > Testing accumulation... C 0.0825006 ms > SIMD 0.00899775 ms
  > Verifying results... OK
  > 
  > <Accumulation 16-bit w/ Intel® TBB>
  > Opening image for accumulation w/ TBB... OK
  > Note : TBB default number of threads in this environment is 16
  > Testing accumulation (nthread=1)... C 38.8368 ms > SIMD 7.80958 ms
  > Testing accumulation (nthread=2)... C 42.0774 ms > SIMD 3.98023 ms
  > Testing accumulation (nthread=4)... C 43.0128 ms > SIMD 2.10318 ms
  > Testing accumulation (nthread=8)... C 50.9899 ms > SIMD 1.51659 ms
  > Testing accumulation (nthread=16)... C 56.4326 ms > SIMD 1.40737 ms
  > TBB Warning: The number of workers is currently limited to 15. The request for 31 workers is ignored. Further requests for more workers will be silently ignored until the limit changes.
  > 
  > Testing accumulation (nthread=32)... C 56.4277 ms > SIMD 1.29229 ms
  > Testing accumulation (nthread=64)... C 56.2676 ms > SIMD 0.984971 ms
  > Testing accumulation (nthread=128)... C 56.0272 ms > SIMD 0.689147 ms
  > Testing accumulation (nthread=256)... C 55.9849 ms > SIMD 0.695642 ms
  > Testing accumulation (nthread=512)... C 56.0281 ms > SIMD 0.689616 ms
  > Verifying results... OK

  Note — I repeated each test 2K * 500 = 1M times to measure the execution
         time.
  Note — it was observed that the general error on the execution time was about
         0.01 ms.

Done.

2020. 08. 04. Jio Gim
