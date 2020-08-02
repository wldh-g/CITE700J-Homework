Homework 02
===========

Goal :
  Implement image addition and transpose using generic C

Explanation :
  This program will read images in `images` directory and add them and
  transpose `lena_512.raw`. Addition will be proceeded in two ways, one is save
  the average of two image pixel values as 8-bit image, and the other is sum
  them up and save the image as 16-bit image. Transpose will be proceeded in 6
  ways, one is line-by-line transpose that we typically do, and the other is
  block transpose. In block transpose, the image will be divided in grid whose
  size exists from 8x8 to 128x128, and the transpose will be executed both to
  the inter-grid and intra-grid. The result will be exported in `output`
  directory.

Build Requirement : C++17 or later

Tested Environment :
  - Compiler : MSVC 19.26.28806 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > Opening image for addition... OK
  > Testing C 8-bit addition... 0.144263 ms
  > Testing C 16-bit addition... 0.129732 ms
  > Saving results... OK
  > Opening image for transpose... OK
  > Testing C line-by-line transpose... 0.281645 ms
  > Testing C 8-block transpose... 0.147151 ms
  > Testing C 16-block transpose... 0.1313 ms
  > Testing C 32-block transpose... 0.161984 ms
  > Testing C 64-block transpose... 0.160161 ms
  > Testing C 128-block transpose... 0.29486 ms
  > Saving results... OK

  Note — in above run, I repeated 50000 times for each test instead of 2000.
  Yawp — 8/16-block T seems that their main logic can be done in L1 cache. So
         in 16-block T, because it has less outer block transition than 8-block
         , the running time is reduced about 0.016ms. It also seems that from
         32-block T, the procedure cannot be done in L1, but in L2. Look 32/64
         block T, their running time is longer than 8/16 but 64 has shorter
         time than 32-block T. And again, 128-block transpose seems that it
         cannot be done in L2 cache but L3 cache. This is my guess only.

Done.

2020. 07. 29. Jio Gim
