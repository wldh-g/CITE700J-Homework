#include <algorithm>
#include <cmath>
#include "Filters.h"
#include "Functions.h"
#include "Util.h"

/*****************
 ** C Functions **
 *****************/

namespace c {
  ///////////////
  // Inversion //
  ///////////////

  void invert_8b(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = 255 - *(in + pos);
      }
    }
  };

  //////////////////
  // Accumulation //
  //////////////////

  void accumulation_16b(uint16_t* in, uint64_t* out, size_t x_size, size_t y_size) {
    *out = 0;
    size_t i_max = x_size * y_size;
    for (size_t i = 0; i < i_max; i += 1) {
      *out += (uint64_t) * (in + i);
    }
  };

  //////////////
  // Flipping //
  //////////////

  void xflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t in_pos = y * x_size + x;
        size_t out_pos = y * x_size + x_size - x - 1;
        *(out + out_pos) = *(in + in_pos);
      }
    }
  };

  void yflip(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t in_pos = y * x_size + x;
        size_t out_pos = (y_size - y - 1) * x_size + x;
        *(out + out_pos) = *(in + in_pos);
      }
    }
  };

  //////////////
  // Addition //
  //////////////

  void add_8b(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = *(in1 + pos) / 2 + *(in2 + pos) / 2;
      }
    }
  };

  void add_16b(uint8_t* in1, uint8_t* in2, uint16_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = (uint16_t) * (in1 + pos) + (uint16_t) * (in2 + pos);
      }
    }
  };

  /////////////////
  // Dot Product //
  /////////////////

  void dot(uint8_t* in1, uint8_t* in2, uint64_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    *out = 0;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *out += (uint64_t)*(in1 + pos) * (uint64_t)*(in2 + pos);
      }
    }
  };

  ///////////////
  // Transpose //
  ///////////////

  void transpose_line_by_line(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t in_pos = y * x_size + x;
        size_t out_pos = x * y_size + y;
        *(out + out_pos) = *(in + in_pos);
      }
    }
  };

  void transpose_block(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size, size_t blk_size) {
    size_t x, y, blk_x, blk_y;
    const size_t blk_x_size = x_size / blk_size;
    const size_t blk_y_size = y_size / blk_size;
    for (blk_y = 0; blk_y < blk_y_size; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size; blk_x += 1) {
        size_t in_base = blk_size * blk_y * x_size + blk_size * blk_x;
        size_t out_base = blk_size * blk_x * y_size + blk_size * blk_y;
        for (y = 0; y < blk_size; y += 1) {
          for (x = 0; x < blk_size; x += 1) {
            size_t in_pos = in_base + y * x_size + x;
            size_t out_pos = out_base + x * y_size + y;
            *(out + out_pos) = *(in + in_pos);
          }
        }
      }
    }
  };

  void transpose_block_8(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    return transpose_block(in, out, x_size, y_size, 8);
  };
  void transpose_block_16(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    return transpose_block(in, out, x_size, y_size, 16);
  };
  void transpose_block_32(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    return transpose_block(in, out, x_size, y_size, 32);
  };
  void transpose_block_64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    return transpose_block(in, out, x_size, y_size, 64);
  };
  void transpose_block_128(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    return transpose_block(in, out, x_size, y_size, 128);
  };

  void transpose16_block_8(uint16_t* in, uint16_t* out, size_t x_size, size_t y_size) {
    size_t x, y, blk_x, blk_y;
    const size_t blk_x_size = x_size / 8;
    const size_t blk_y_size = y_size / 8;
    for (blk_y = 0; blk_y < blk_y_size; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size; blk_x += 1) {
        uint16_t* in_base = in + blk_y * 8 * x_size + blk_x * 8;
        uint16_t* out_base = out + blk_x * 8 * y_size + blk_y * 8;
        for (y = 0; y < 8; y += 1) {
          for (x = 0; x < 8; x += 1) {
            *(out_base + x * y_size + y) = *(in_base + y * x_size + x);
          }
        }
      }
    }
  };

  void transpose32_block_4(uint32_t* in, uint32_t* out, size_t x_size, size_t y_size) {
    size_t x, y, blk_x, blk_y;
    const size_t blk_x_size = x_size / 4;
    const size_t blk_y_size = y_size / 4;
    for (blk_y = 0; blk_y < blk_y_size; blk_y += 1) {
      for (blk_x = 0; blk_x < blk_x_size; blk_x += 1) {
        uint32_t* in_base = in + blk_y * 4 * x_size + blk_x * 4;
        uint32_t* out_base = out + blk_x * 4 * y_size + blk_y * 4;
        for (y = 0; y < 4; y += 1) {
          for (x = 0; x < 4; x += 1) {
            *(out_base + x * y_size + y) = *(in_base + y * x_size + x);
          }
        }
      }
    }
  };

  /////////////////
  // Convolution //
  /////////////////

  void conv_zp_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size) {
    size_t x, y, fx, fy;
    const size_t plus = (filter->size - 1) / 2;
    const size_t x_2plus = x_size + 2 * plus;
    uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
    }
    int32_t tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmp = 0;
        for (fy = 0; fy < filter->size; fy += 1) {
          for (fx = 0; fx < filter->size; fx += 1) {
            tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmp /= filter->kernel_sum;
        *(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
      }
    }
    delete[] padded_img;
  };

  void conv_zp_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size) {
    size_t x, y, fx, fy;
    const size_t plus = (filter->size - 1) / 2;
    const size_t x_2plus = x_size + 2 * plus;
    uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
    }
    int32_t tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmp = 0;
        for (fy = 0; fy < filter->size; fy += 1) {
          for (fx = 0; fx < filter->size; fx += 1) {
            tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmp /= filter->kernel_sum;
        *(out + pos) = (int8_t)(tmp >= -128 ? (tmp <= 127 ? tmp : 127) : -128);
      }
    }
    delete[] padded_img;
  };

  void conv_be_unsigned(uint8_t* in, const filt::Filter<int8_t>* filter, uint8_t* out,
                        size_t x_size, size_t y_size) {
    size_t x, y, fx, fy;
    const size_t plus = (filter->size - 1) / 2;
    const size_t x_2plus = x_size + 2 * plus;
    const size_t y_2plus = y_size + 2 * plus;
    uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2 * plus)] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
    }
    for (y = 0; y < plus; y += 1) {
      memcpy(padded_img + y * x_2plus + plus, in, x_size);
      memcpy(padded_img + (y_size + plus + y) * x_2plus + plus, in_last_line, x_size);
    }
    for (y = 0; y < y_2plus; y += 1) {
      memcpy(padded_img + y * x_2plus, padded_img + y * x_2plus + plus, plus);
      memcpy(padded_img + (y + 1) * x_2plus - plus,
             padded_img + (y + 1) * x_2plus - 2 * plus, plus);
    }
    int32_t tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmp = 0;
        for (fy = 0; fy < filter->size; fy += 1) {
          for (fx = 0; fx < filter->size; fx += 1) {
            tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmp /= filter->kernel_sum;
        *(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
      }
    }
    delete[] padded_img;
  };

  void conv_be_signed(uint8_t* in, const filt::Filter<int8_t>* filter, int8_t* out, size_t x_size,
                      size_t y_size) {
    size_t x, y, fx, fy;
    const size_t plus = (filter->size - 1) / 2;
    const size_t x_2plus = x_size + 2 * plus;
    const size_t y_2plus = y_size + 2 * plus;
    uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + plus) * x_2plus + plus, in + y * x_size, x_size);
    }
    for (y = 0; y < plus; y += 1) {
      memcpy(padded_img + y * x_2plus + plus, in, x_size);
      memcpy(padded_img + (y_size + plus + y) * x_2plus + plus, in_last_line, x_size);
    }
    for (y = 0; y < y_2plus; y += 1) {
      memcpy(padded_img + y * x_2plus, padded_img + y * x_2plus + plus, plus);
      memcpy(padded_img + (y + 1) * x_2plus - plus,
             padded_img + (y + 1) * x_2plus - 2 * plus, plus);
    }
    int32_t tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmp = 0;
        for (fy = 0; fy < filter->size; fy += 1) {
          for (fx = 0; fx < filter->size; fx += 1) {
            tmp += *(filter->kernel + fy * filter->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmp /= filter->kernel_sum;
        *(out + pos) = (int8_t)(tmp >= -128 ? (tmp <= 127 ? tmp : 127) : -128);
      }
    }
    delete[] padded_img;
  };

  //////////////////
  // Sobel Filter //
  //////////////////

  void sobel_zp(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y, fx, fy;
    const size_t x_2plus = x_size + 2;
    uint8_t* padded_img = new uint8_t[x_2plus * (y_size + 2)] { 0 };
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
    }
    auto gx = filt::sobel_x;
    auto gy = filt::sobel_y;
    int32_t tmpx, tmpy, tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmpx = 0;
        tmpy = 0;
        for (fy = 0; fy < 3; fy += 1) {
          for (fx = 0; fx < 3; fx += 1) {
            tmpx += *(gx->kernel + fy * gx->size + fx) * *(padded_pos + fy * x_2plus + fx);
            tmpy += *(gy->kernel + fy * gy->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmpx /= gx->scale;
        tmpy /= gy->scale;
        tmp = std::abs(tmpx) + std::abs(tmpy); // This was more clear than sqrt
        *(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
      }
    }
    delete[] padded_img;
  };

  void sobel_be(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y, fx, fy;
    const size_t x_2plus = x_size + 2;
    const size_t y_2plus = y_size + 2;
    uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
    }
    memcpy(padded_img + 1, in, x_size);
    memcpy(padded_img + (y_size + 1) * x_2plus + 1, in_last_line, x_size);
    for (y = 0; y < y_2plus; y += 1) {
      *(padded_img + y * x_2plus) = *(padded_img + y * x_2plus + 1);
      *(padded_img + (y + 1) * x_2plus - 1) = *(padded_img + (y + 1) * x_2plus - 2);
    }
    auto gx = filt::sobel_x;
    auto gy = filt::sobel_y;
    int32_t tmpx, tmpy, tmp;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        uint8_t* padded_pos = padded_img + y * x_2plus + x;
        tmpx = 0;
        tmpy = 0;
        for (fy = 0; fy < 3; fy += 1) {
          for (fx = 0; fx < 3; fx += 1) {
            tmpx += *(gx->kernel + fy * gx->size + fx) * *(padded_pos + fy * x_2plus + fx);
            tmpy += *(gy->kernel + fy * gy->size + fx) * *(padded_pos + fy * x_2plus + fx);
          }
        }
        tmpx /= gx->scale;
        tmpy /= gy->scale;
        tmp = std::abs(tmpx) + std::abs(tmpy); // This was more clear than sqrt
        *(out + pos) = tmp >= 0 ? (tmp <= 255 ? tmp : 255) : 0;
      }
    }
    delete[] padded_img;
  };

  ///////////////////
  // Median Filter //
  ///////////////////

  void median_3tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    uint8_t* padded_img = new uint8_t[x_size * (y_size + 2)] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + 1) * x_size, in + y * x_size, x_size);
    }
    memcpy(padded_img, in, x_size);
    memcpy(padded_img + (y_size + 1) * x_size, in_last_line, x_size);
    uint8_t point1, point2, point3;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        point1 = *(padded_img + pos);
        point2 = *(padded_img + pos + x_size);
        point3 = *(padded_img + pos + 2 * x_size);
        sort2(point2, point3);
        sort2(point1, point3);
        sort2(point1, point2);
        *(out + pos) = point2;
      }
    }
    delete[] padded_img;
  };

  void median_5tap(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    uint8_t* padded_img = new uint8_t[x_size * (y_size + 4)] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + 2) * x_size, in + y * x_size, x_size);
    }
    for (y = 0; y < 2; y += 1) {
      memcpy(padded_img + y * x_size, in, x_size);
      memcpy(padded_img + (y_size + 2 + y) * x_size, in_last_line, x_size);
    }
    uint8_t point1, point2, point3, point4, point5;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        point1 = *(padded_img + pos);
        point2 = *(padded_img + pos + x_size);
        point3 = *(padded_img + pos + 2 * x_size);
        point4 = *(padded_img + pos + 3 * x_size);
        point5 = *(padded_img + pos + 4 * x_size);
        sort2(point1, point2);
        sort2(point4, point5);
        sort2(point3, point5);
        sort2(point3, point4);
        sort2(point1, point4);
        sort2(point1, point3);
        sort2(point2, point5);
        sort2(point2, point4);
        sort2(point2, point3);
        *(out + pos) = point3;
      }
    }
    delete[] padded_img;
  };

  void median_3by3(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    size_t x, y;
    const size_t x_2plus = x_size + 2;
    const size_t y_2plus = y_size + 2;
    uint8_t* padded_img = new uint8_t[x_2plus * y_2plus] { 0 };
    uint8_t* in_last_line = in + (y_size - 1) * x_size;
    for (y = 0; y < y_size; y += 1) {
      memcpy(padded_img + (y + 1) * x_2plus + 1, in + y * x_size, x_size);
    }
    memcpy(padded_img + 1, in, x_size);
    memcpy(padded_img + (y_size + 1) * x_2plus + 1, in_last_line, x_size);
    for (y = 0; y < y_2plus; y += 1) {
      *(padded_img + y * x_2plus) = *(padded_img + y * x_2plus + 1);
      *(padded_img + (y + 1) * x_2plus - 1) = *(padded_img + (y + 1) * x_2plus - 2);
    }
    uint8_t point1, point2, point3, point4, point5, point6, point7, point8, point9;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_2plus + x;
        point1 = *(padded_img + pos);
        point2 = *(padded_img + pos + 1);
        point3 = *(padded_img + pos + 2);
        point4 = *(padded_img + pos + x_2plus);
        point5 = *(padded_img + pos + x_2plus + 1);
        point6 = *(padded_img + pos + x_2plus + 2);
        point7 = *(padded_img + pos + 2 * x_2plus);
        point8 = *(padded_img + pos + 2 * x_2plus + 1);
        point9 = *(padded_img + pos + 2 * x_2plus + 2);
        sort2(point1, point2);
        sort2(point4, point5);
        sort2(point7, point8);
        sort2(point2, point3);
        sort2(point5, point6);
        sort2(point8, point9);
        sort2(point1, point2);
        sort2(point4, point5);
        sort2(point7, point8);
        sort2(point1, point4);
        sort2(point4, point7);
        sort2(point1, point4);
        sort2(point2, point5);
        sort2(point5, point8);
        sort2(point2, point5);
        sort2(point3, point6);
        sort2(point6, point9);
        sort2(point3, point6);
        sort2(point2, point4);
        sort2(point6, point8);
        sort2(point3, point7);
        sort2(point5, point7);
        sort2(point3, point5);
        *(out + y * x_size + x) = point5;
      }
    }
    delete[] padded_img;
  }

  ////////////////////
  // Multiplication //
  ////////////////////

  void multiply(uint8_t* in1, uint8_t* in2, uint8_t* out, size_t x_size, size_t y_size) {
    for (size_t y = 0; y < y_size; y += 1) {
      for (size_t x = 0; x < x_size; x += 1) {
        uint8_t* pos = out + y * x_size + x;
        *pos = 0;
        for (size_t i = 0; i < x_size; i += 1) {
          *pos += *(in1 + y * x_size + i) * *(in2 + i * x_size + x);
        }
      }
    }
  };

  /////////////
  // Scaling //
  /////////////

  void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(0.5f * 64);
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = (uint8_t)((scale * *(in + pos)) >> 6);
      }
    }
  };

  void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(1.3f * 64);
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };

  void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(2.4f * 64);
    size_t x, y;
    for (y = 0; y < y_size; y += 1) {
      for (x = 0; x < x_size; x += 1) {
        size_t pos = y * x_size + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };

  #ifdef __INTEL_COMPILER
  void scale_13_unroll64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(1.3f * 64);
    size_t x, y;
    #pragma unroll(64)
    for (y = 0; y < 512; y += 1) {
      #pragma unroll(64)
      for (x = 0; x < 512; x += 1) {
        size_t pos = y * 512 + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };

  void scale_13_unroll512(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(1.3f * 64);
    size_t x, y;
    #pragma unroll(512)
    for (y = 0; y < 512; y += 1) {
      #pragma unroll(512)
      for (x = 0; x < 512; x += 1) {
        size_t pos = y * 512 + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 197 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };

  void scale_24_unroll64(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(2.4f * 64);
    size_t x, y;
    #pragma unroll(64)
    for (y = 0; y < 512; y += 1) {
      #pragma unroll(64)
      for (x = 0; x < 512; x += 1) {
        size_t pos = y * 512 + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };

  void scale_24_unroll512(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
    constexpr uint16_t scale = (uint16_t)(2.4f * 64);
    size_t x, y;
    #pragma unroll(512)
    for (y = 0; y < 512; y += 1) {
      #pragma unroll(512)
      for (x = 0; x < 512; x += 1) {
        size_t pos = y * 512 + x;
        *(out + pos) = (uint8_t)(*(in + pos) >= 107 ? 255 : (scale * *(in + pos)) >> 6);
      }
    }
  };
  #endif
}
