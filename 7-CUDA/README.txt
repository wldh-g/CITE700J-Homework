Homework 07-10
===========

Goal :
  Image features using CUDA.

Explanation :
  You can generate the program for this homework by building `jio_cuda.vcxproj`
  (default target project of `jio_pp.sln`). The program will load images in
  `images` directory and do image features using generic C and CUDA. The
  results of convolutions will be saved in `output` directory.

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

Example Output (jio_cuda, NVCC) :
  > Compiled with NVCC.
  > CUDA time measurements do not include cudaMemcpy time.
  > 
  > <8-bit & 16-bit Addition>
  > Opening image for addition... OK
  > Testing 8-bit addition (500 reps)... C 2.57954 ms / SIMD 0.641226 ms / CUDA 0.313894 ms
  > Testing 16-bit addition (500 reps)... C 2.31747 ms / SIMD 0.899334 ms / CUDA 0.321272 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Dot Product>
  > Opening image for dot product... OK
  > Testing dot_product (500 reps)... C 4.75181 ms / CUDA 2.80207 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <8-bin Histogram>
  > Opening image for histogram... OK
  > Testing histogram (100 reps)... C 7.83922 ms / CUDA 16.7462 ms
  > Verifying results... OK
  > 
  > <FlipX & FlipY>
  > Opening image for flipping... OK
  > Testing x-axis flipping (500 reps)... C 2.56538 ms / SIMD 0.816661 ms / CUDA 0.337809 ms
  > Testing y-axis flipping (500 reps)... C 1.86329 ms / SIMD 0.53154 ms / CUDA 0.361947 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <General Convolution (unsigned)>
  > Opening image for convolution (unsigned)... OK
  > Testing zero-pad convolution (unsigned, 10 reps)... C 505.501 ms / CUDA 10.871 ms
  > Testing zero-pad convolution w/ bigger block in CUDA (unsigned, 10 reps)... C 493.203 ms / CUDA 161.395 ms
  > Testing boundary extension convolution (unsigned, 10 reps)... C 486.604 ms / CUDA 6.05734 ms
  > Testing boundary extension convolution w/ bigger block in CUDA (unsigned, 10 reps)... C 484.766 ms / CUDA 84.5013 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Inversion 8-bit>
  > Opening image for inversion... OK
  > Testing inversion (500 reps)... C 1.95127 ms / SIMD 0.447605 ms / CUDA 0.345871 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Horizontal 5-tap Median Filter>
  > Opening image for median filter... OK
  > Testing horizontal 5-tap median filter (1000 reps)... C 1.51982 ms / CUDA 0.19854 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Matrix Multiplications>
  > Opening image for multiplication... OK
  > Testing 32x32 multiplication (1000 reps)... C 0.0389491 ms / CUDA 0.181508 ms
  > Testing 512x512 multiplication (50 reps)... C 228.714 ms / CUDA 1.26922 ms
  > Testing 2048x2048 multiplication (1 reps)... C 17642.9 ms / CUDA 141.061 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Multi-bit Transposes>
  > Opening image for transpose... OK
  > Testing 8-bit transpose (1000 reps)... C 0.142641 ms / SIMD 0.0666302 ms / CUDA 0.21474 ms
  > Testing 16-bit transpose (1000 reps)... C 0.231158 ms / SIMD 0.138129 ms / CUDA 0.235229 ms
  > Testing 32-bit transpose (1000 reps)... C 0.352052 ms / SIMD 0.320773 ms / CUDA 0.239591 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > Done.

Example Output (jio_simd, ICL) :
  > Compiled with ICL.
  > 
  > <Accumulation 16-bit>
  > Opening image for accumulation... OK
  > Testing accumulation (1000 reps)... C 0.042115 ms / SIMD 0.0215087 ms
  > Verifying results... OK
  > 
  > <Accumulation 16-bit w/o Intel® TBB>
  > Opening image for accumulation... OK
  > Testing accumulation (without TBB, 5 reps)... C 747.416 ms / SIMD 79.9934 ms
  > Verifying results... OK
  > 
  > <Accumulation 16-bit w/ Intel® TBB>
  > Note : TBB default number of threads in this environment is 16
  > Testing accumulation (nthread=1, 5 reps)... C 302.226 ms / SIMD 78.4589 ms
  > Testing accumulation (nthread=2, 5 reps)... C 154.483 ms / SIMD 41.8164 ms
  > Testing accumulation (nthread=4, 5 reps)... C 89.2906 ms / SIMD 24.8828 ms
  > Testing accumulation (nthread=8, 5 reps)... C 55.5646 ms / SIMD 14.9522 ms
  > Testing accumulation (nthread=16, 5 reps)... C 40.7683 ms / SIMD 10.8408 ms
  > Testing accumulation (nthread=32, 5 reps)... C 40.4023 ms / SIMD 11.2772 ms
  > Testing accumulation (nthread=64, 5 reps)... C 40.0667 ms / SIMD 11.3801 ms
  > Testing accumulation (nthread=128, 5 reps)... C 41.175 ms / SIMD 11.5735 ms
  > Testing accumulation (nthread=256, 5 reps)... C 39.4806 ms / SIMD 11.7768 ms
  > Testing accumulation (nthread=512, 5 reps)... C 40.4603 ms / SIMD 11.3204 ms
  > Testing accumulation (nthread=1024, 5 reps)... C 40.6549 ms / SIMD 12.1861 ms
  > 
  > <8-bit & 16-bit Addition>
  > Opening image for addition... OK
  > Testing 8-bit addition (500 reps)... C 1.58547 ms / SIMD 0.215495 ms
  > Testing 16-bit addition (500 reps)... C 0.739666 ms / SIMD 0.790427 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Dot Product>
  > Opening image for dot product... OK
  > Testing dot_product (500 reps)... C 1.15804 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <8-bin Histogram>
  > Opening image for histogram... OK
  > Testing histogram (100 reps)... C 9.95143 ms
  > Verifying results... OK
  > 
  > <FlipX & FlipY>
  > Opening image for flipping... OK
  > Testing x-axis flipping (500 reps)... C 1.57712 ms / SIMD 0.632412 ms
  > Testing y-axis flipping (500 reps)... C 0.114709 ms / SIMD 0.113275 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <General Convolution (signed)>
  > Opening image for convolution (signed)... OK
  > Testing zero-pad convolution (signed, 100 reps)... C 19.7271 ms
  > Testing boundary extension convolution (signed, 100 reps)... C 19.6449 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <General Convolution (unsigned)>
  > Opening image for convolution (unsigned)... OK
  > Testing zero-pad convolution (unsigned, 10 reps)... C 319.767 ms
  > Testing boundary extension convolution (unsigned, 10 reps)... C 331.701 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Inversion 8-bit>
  > Opening image for inversion... OK
  > Testing inversion (500 reps)... C 2.1627 ms / SIMD 0.10245 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Median Filter>
  > Opening image for median filter... OK
  > Testing 3-tap median filter (100 reps)... C 0.047812 ms / SIMD 0.022333 ms
  > Testing 5-tap median filter (100 reps)... C 0.126523 ms / SIMD 0.032448 ms
  > Testing 3-by-3 median filter (100 reps)... C 0.268023 ms / SIMD 0.270511 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Horizontal 5-tap Median Filter>
  > Opening image for median filter... OK
  > Testing horizontal 5-tap median filter (1000 reps)... C 1.7777 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Matrix Multiplications>
  > Opening image for multiplication... OK
  > Testing 32x32 multiplication (1000 reps)... C 0.0137976 ms
  > Testing 512x512 multiplication (50 reps)... C 136.504 ms
  > Testing 2048x2048 multiplication (1 reps)... C 18726.2 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Scaling>
  > Opening image for scaling... OK
  > Testing 0.5x scaling (1000 reps)... C 0.0710216 ms / SIMD 0.0167537 ms
  > Testing 1.3x scaling (1000 reps)... C 0.158063 ms / SIMD 0.0154327 ms
  > Testing 2.4x scaling (1000 reps)... C 0.161167 ms / SIMD 0.0151492 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Scaling (unrolled)>
  > Opening image for scaling (unrolled)... OK
  > Testing 1.3x scaling (unrolled, 1000 reps)... C_64 0.126032 ms / C_512 0.159521 ms
  > Testing 2.4x scaling (unrolled, 1000 reps)... C_64 0.116141 ms / C_512 0.159442 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Sobel Filter>
  > Opening image for filtering... OK
  > Testing zero-pad Sobel filter (100 reps)... C 2.91959 ms
  > Testing boundary extension Sobel filter (100 reps)... C 2.72334 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <8-bit Transposes>
  > Opening image for transpose... OK
  > Testing line-by-line transpose (1000 reps)... C 0.270118 ms
  > Testing 8-bit block transpose (1000 reps)... C 0.111014 ms
  > Testing 16-bit block transpose (1000 reps)... C 0.103947 ms
  > Testing 32-bit block transpose (1000 reps)... C 0.12849 ms
  > Testing 64-bit block transpose (1000 reps)... C 0.128963 ms
  > Testing 128-bit block transpose (1000 reps)... C 0.258902 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > <Multi-bit Transposes>
  > Opening image for transpose... OK
  > Testing 8-bit transpose (1000 reps)... C 0.109389 ms / SIMD 0.0185401 ms
  > Testing 16-bit transpose (1000 reps)... C 0.107414 ms / SIMD 0.0918403 ms
  > Testing 32-bit transpose (1000 reps)... C 0.144944 ms / SIMD 0.295115 ms
  > Verifying results... OK
  > Saving results... OK
  > 
  > Done.

  Note — It was observed that the general error on the execution time
         measurement due to the runtime randomness was about 0.01 ms.

Done.

2020. 08. 10. Jio Gim
