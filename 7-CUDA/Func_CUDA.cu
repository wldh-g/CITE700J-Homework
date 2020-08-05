#include "Core.h"
#include "Functions.cuh"

__global__ void cuda::invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t xWidth = blockDim.x * gridDim.x;
  uint32_t xLoc = blockIdx.x * blockDim.x + threadIdx.x;
  uint32_t yLoc = blockIdx.y * blockDim.y + threadIdx.y;
  uint32_t index = xLoc + yLoc * xWidth;

  if (index < x_size * y_size) {
    out[index] = 255 - in[index];
  }
};
