Homework 10
===========

Goal :
  Image convolution and histogram using CUDA.

Explanation :
  You can generate the program for this homework by building `jio_cuda.vcxproj`
  (default target project of `jio_pp.sln`). The program will load images in
  `images` directory and do convolution and make histogram using generic C and
  CUDA. The results of convolutions will be saved in `output` directory.

Code File Descriptions :
  - Functions.*, Func_*.* : Image processing functions required by homework
  - Core.* : Core function launcher, tester, and file handlers
  - Tasks.h, Task_*.cpp : Each task functions who repeats test and saves result
  - Filters.h, Filters.cpp : Filters used to convolution and Sobel filter
  - Timer.h, Timer.cpp : Timing functions provided by professor
  - Util.* : Utilities used to test, develop and implement features
  - Main.cpp : Contains main function and defines what tasks will be performed

Visual Studio File Descriptions :
  - jio_pp.sln : Visual Studio solution includes SIMD & CUDA projects
  - jio_simd.vcxproj* : Visual Studio SIMD project. This does not perform CUDA
                        test. This uses ICL by default, but you can convert it
                        to use MSVC. If then, this will not perform TBB and
                        unrolling test.
  - jio_cuda.vcxproj* : Visual Studio CUDA project. This does not perform TBB,
                        unrolling test.

Build Requirements :
  - C++17 or later
  - Intel® TBB 2019 Update 4 or later
  - CUDA Toolkit 8.0 or later

Runtime CPU Requirements : SSE2, SSSE3, AVX, AVX2

Tested Environment :
  - Compiler
    + (jio_cuda) NVCC release 11.0, V11.0.194
    + (jio_simd) ICL 19.1.2.254 Build 20200623
  - Software System
    + Microsoft Visual Studio 2019 (16.6.5) on Windows 10
    + Intel Parallel Studio XE Cluster Edition for Windows 2020 Update 2
    + CUDA Toolkit 11.0 (cuda_11.0_bu.relgpu_drvr445TC445_37.28540450_0)
  - Hardware System
    + AMD Ryzen 7 3700X
    + 32GB DDR4 RAM
    + NVIDIA GeForce RTX 2070 SUPER

Example Output :
  > Compiled with NVCC.
  > CUDA time measurements do not include cudaMemcpy time.
  > 
  > <General Convolution (unsigned)>
  > Opening image for convolution (unsigned)... OK
  > Testing zero-pad convolution (unsigned, 10 reps)... C 510.536 ms / CUDA 10.2111 ms
  > Testing zero-pad convolution w/ bigger block in CUDA (unsigned, 10 reps)... C 483.793 ms / CUDA 156.988 ms
  > Testing boundary extension convolution (unsigned, 10 reps)... C 489.882 ms / CUDA 5.8211 ms
  > Testing boundary extension convolution w/ bigger block in CUDA (unsigned, 10 reps)... C 484.243 ms / CUDA 85.7047 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <8-bin Histogram>
  > Opening image for histogram... OK
  > Testing histogram (100 reps)... C 7.95594 ms / CUDA 15.2035 ms
  > Verifying results... OK

  Note — It was observed that the general error on the execution time
         measurement due to the runtime randomness was about 0.01 ms.

Done.

2020. 08. 10. Jio Gim
