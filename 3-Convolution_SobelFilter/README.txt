Homework 03
===========

Goal :
  Implement image convolution and Sobel filtering using generic C

Explanation :
  This program will read images in `images` directory and do signed/unsigned
  convolution and apply Sobel filter using zero-padding and boundary extension.
  For signed/unsigned convolution, 15x15 blurring filter is used. The results
  will be exported in `output` directory.

Build Requirement : C++17 or later

Tested Environment :
  - Compiler : MSVC 19.26.28806 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > <General Convolution (unsigned)>
  > Opening image for convolution (unsigned)... OK
  > Testing zero-pad convolution (unsigned)... C 28.8218 ms
  > Testing boundary extension convolution (unsigned)... C 29.0906 ms
  > Saving results... OK
  >
  > <General Convolution (signed)>
  > Opening image for convolution (signed)... OK
  > Testing zero-pad convolution (signed)... C 28.8169 ms
  > Testing boundary extension convolution (signed)... C 28.7739 ms
  > Saving results... OK
  >
  > <Sobel Filter>
  > Opening image for filtering... OK
  > Testing zero-pad Sobel filter... C 2.75697 ms
  > Testing boundary extension Sobel filter... C 2.76107 ms
  > Saving results... OK

  Note — in above run, I repeated 1000 times to measure the execution time.

Done.

2020. 07. 30. Jio Gim
