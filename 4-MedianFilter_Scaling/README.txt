Homework 04
===========

Goal :
  Implement median filter and image value scaling using generic C

Explanation :
  This program will read `lena_512.raw` in `images` directory and apply median
  filter with 3 implementations(3-tap, 5-tap, 3-by-3), and will apply value-
  scaling to the image with scale of 0.5x, 1.3x, and 2.4x. The results will be
  exported in `output` directory.

Build Requirement : C++17 or later

Tested Environment :
  - Compiler : MSVC 19.26.28806 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > <Median Filter>
  > Opening image for median filter... OK
  > Testing 3-tap median filter... C 1.10477 ms
  > Testing 5-tap median filter... C 3.55247 ms
  > Testing 3-by-3 median filter... C 5.73081 ms
  > Saving results... OK
  > 
  > <Scaling>
  > Opening image for scaling... OK
  > Testing 0.5x scaling... C 0.131578 ms
  > Testing 1.3x scaling... C 0.152497 ms
  > Testing 2.4x scaling... C 0.241264 ms
  > Saving results... OK

  Note — in above run, I repeated 2000 times to measure the execution time.

For disassembled code, refer to `dasm` directory.

Done.

2020. 07. 31. Jio Gim
