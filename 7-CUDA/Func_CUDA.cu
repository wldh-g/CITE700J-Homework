#include "Core.h"
#include "Functions.cuh"
#include "Util.cuh"

/********************
 ** CUDA Functions **
 ********************/

///////////////
// Inversion //
///////////////

__global__ void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
  uint32_t x_pos = __x_pos__;
  uint32_t y_pos = __y_pos__;
  uint32_t index = __index__;
  
  if (index < x_size * y_size) {
    out[index] = 255 - in[index];
  }
};
void cuda::invert_8b __make_host__(invert_8b, uint8_t, uint8_t);

//////////////////
// Accumulation //
//////////////////

void cuda::accumulation_16b __cuda_todo__(accumulation_16b, uint16_t, uint64_t);

//////////////
// Flipping //
//////////////

void cuda::xflip __cuda_todo__(xflip, uint8_t, uint8_t);
void cuda::yflip __cuda_todo__(xflip, uint8_t, uint8_t);

//////////////
// Addition //
//////////////

void cuda::add_8b __cuda_todo_2__(add_8b, uint8_t, uint8_t);
void cuda::add_16b __cuda_todo_2__(add_16b, uint8_t, uint16_t);

///////////////
// Transpose //
///////////////

void cuda::transpose_line_by_line __cuda_todo__(transpose_line_by_line, uint8_t, uint8_t);
void cuda::transpose_block_8 __cuda_todo__(transpose_block_8, uint8_t, uint8_t);
void cuda::transpose_block_16 __cuda_todo__(transpose_block_16, uint8_t, uint8_t);
void cuda::transpose_block_32 __cuda_todo__(transpose_block_32, uint8_t, uint8_t);
void cuda::transpose_block_64 __cuda_todo__(transpose_block_64, uint8_t, uint8_t);
void cuda::transpose_block_128 __cuda_todo__(transpose_block_128, uint8_t, uint8_t);
void cuda::transpose16_block_8 __cuda_todo__(transpose16_block_8, uint16_t, uint16_t);
void cuda::transpose32_block_4 __cuda_todo__(transpose32_block_4, uint32_t, uint32_t);

/////////////////
// Convolution //
/////////////////

void cuda::conv_zp_unsigned __cuda_todo_f__(conv_zp_unsigned, uint8_t, int8_t, uint8_t);
void cuda::conv_zp_signed __cuda_todo_f__(conv_zp_signed, uint8_t, int8_t, int8_t);
void cuda::conv_be_unsigned __cuda_todo_f__(conv_be_unsigned, uint8_t, int8_t, uint8_t);
void cuda::conv_be_signed __cuda_todo_f__(conv_be_signed, uint8_t, int8_t, int8_t);

//////////////////
// Sobel Filter //
//////////////////

void cuda::sobel_zp __cuda_todo__(sobel_zp, uint8_t, uint8_t);
void cuda::sobel_be __cuda_todo__(sobel_be, uint8_t, uint8_t);

///////////////////
// Median Filter //
///////////////////

void cuda::median_3tap __cuda_todo__(median_3tap, uint8_t, uint8_t);
void cuda::median_5tap __cuda_todo__(median_5tap, uint8_t, uint8_t);
void cuda::median_3by3 __cuda_todo__(median_3by3, uint8_t, uint8_t);

/////////////
// Scaling //
/////////////

void cuda::scale_05 __cuda_todo__(scale_05, uint8_t, uint8_t);
void cuda::scale_13 __cuda_todo__(scale_13, uint8_t, uint8_t);
void cuda::scale_24 __cuda_todo__(scale_24, uint8_t, uint8_t);
