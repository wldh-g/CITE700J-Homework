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

File Descriptions :
  - Functions.h, Func_*.cpp : Image processing functions required by homework
  - Core.h, Core.cpp : Core function launcher, tester, and file handlers
  - Tasks.h, Task_*.cpp : Each task functions who repeats test and saves result
  - Filters.h, Filters.cpp : Filters used to convolution and Sobel filter
  - Timer.h, Timer.cpp : Timing functions provided by professor
  - Util.h : Utilities used to test, develop and implement features
  - Main.cpp : Contains main function and defines what tasks will be performed
               in this homework

Build Requirement : C++17 or later

Runtime CPU Requirements : SSE2, SSSE3, AVX, AVX2

Tested Environment :
  - Compiler : MSVC 19.26.28806 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > Compiled with MSVC.
  > 
  > <FlipX & FlipY>
  > Opening image for flipping... OK
  > Testing x-axis flipping... C 0.197409 ms > SIMD 0.0855145 ms
  > Testing y-axis flipping... C 0.215081 ms > SIMD 0.038325 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <8-bit & 16-bit Addition>
  > Opening image for addition... OK
  > Testing 8-bit addition... C 0.148347 ms > SIMD 0.0308461 ms
  > Testing 16-bit addition... C 0.138763 ms > SIMD 0.0442867 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Accumulation 16-bit>
  > Opening image for accumulation... OK
  > Testing accumulation... C 0.380686 ms > SIMD 0.032333 ms
  > Verifying results... OK
  > 
  > <Scaling>
  > Opening image for scaling... OK
  > Testing 0.5x scaling... C 0.13572 ms > SIMD 0.0344488 ms
  > Testing 1.3x scaling... C 0.165531 ms > SIMD 0.0304903 ms
  > Testing 2.4x scaling... C 0.267722 ms > SIMD 0.0320095 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Median Filter>
  > Opening image for median filter... OK
  > Testing 3-tap median filter... C 0.438464 ms > SIMD 0.0382975 ms
  > Testing 5-tap median filter... C 1.77292 ms > SIMD 0.0537565 ms
  > Testing 3-by-3 median filter... C 3.63424 ms > SIMD 0.318247 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Multi-bit Transposes>
  > Opening image for transpose... OK
  > Testing 8-bit transpose... C 0.164023 ms > SIMD 0.0820393 ms
  > Testing 16-bit transpose... C 0.264569 ms > SIMD 0.145374 ms
  > Testing 32-bit transpose... C 0.377067 ms > SIMD 0.32941 ms
  > Verifying results... OK
  > Saving results... OK

  Note — in above run, I repeated 2000 times to measure the execution time.
  Note — it was observed that the general error on the execution time was about
         0.01 ms.

Done.

2020. 08. 03. Jio Gim
