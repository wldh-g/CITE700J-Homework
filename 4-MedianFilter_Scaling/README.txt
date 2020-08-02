Homework 04
===========

Goal :
  Implement median filter and image value scaling using generic C

Explanation :
  This program will read `lena_512.raw` in `images` directory and apply median
  filter with 3 implementations(3-tap, 5-tap, 3-by-3). This program will also
  read `lena_512.raw` and apply value-scaling to the image with scale of 0.5x,
  1.3x, and 2.4x. Unrolling with parameter 64 and 512 will be tested. The
  results will be exported in `output` directory.

Build Requirement : C++17 or later

Tested Environment :
  - Compiler : Intel Compiler 19.1.2.254 Build 20200623 (x64)
  - Software System : Microsoft Visual Studio 2019 (16.6.5) on Windows 10
  - Hardware System : AMD Ryzen 7 3700X with 32GB DDR4 memory

Example Output :
  > <Median Filter>
  > Opening image for median filter... OK
  > Testing 3-tap median filter... C 0.0540472 ms
  > Testing 5-tap median filter... C 0.214276 ms
  > Testing 3-by-3 median filter... C 0.318228 ms
  > Saving results... OK
  >
  > <Scaling>
  > Opening image for scaling... OK
  > Testing 0.5x scaling... C 0.070579 ms
  > Testing 1.3x scaling... C 0.167444 ms
  > Testing 2.4x scaling... C 0.155503 ms
  > Saving results... OK
  >
  > <Scaling (unrolled)>
  > Opening image for scaling (unrolled)... OK
  > Testing 1.3x scaling (unrolled)... (64) 0.121895 ms / (512) 0.160935 ms
  > Testing 2.4x scaling (unrolled)... (64) 0.120651 ms / (512) 0.162366 ms

  Note — in above run, I repeated 2000 times to measure the execution time.

Done.

2020. 07. 31. Jio Gim

===============================================================================

Supplement - 2020. 08. 01.

Intel Compiler seems to support up to n=255 loop unrolling, and this seems to
only applied when optimization option O3 is set.

So, my implementation with n=512 unroll option and default build option may be
wrong, because default build option is set to O2 optimization in release mode.
Following Intel's description, loop unrolling should not work in my case. But
it seems that unroll pragma works the performance even with 02 option, as you
see in 64 unroll's case.

For my inspection about unroll pragma and this phenomenon, take a look at this
repository link: https://go.wldh.org/unroll-inspect

See page 1983 to see description about the 'unroll/nounroll` pragma in this
document(PDF, 15.6MiB): https://go.wldh.org/icl-19-1-guide.pdf
