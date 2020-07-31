#include <algorithm>
#include <cmath>
#include <cstring>
#include "Filters.h"
#include "Functions.h"

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
				*(out + pos) = (uint16_t)*(in1 + pos) + (uint16_t)*(in2 + pos);
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
			memcpy(padded_img + (y + 1) * x_2plus - plus - 1,
						 padded_img + (y + 1) * x_2plus - 2 * plus - 1, plus);
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
			memcpy(padded_img + (y + 1) * x_2plus - plus - 1,
						 padded_img + (y + 1) * x_2plus - 2 * plus - 1, plus);
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
			*(padded_img + (y + 1) * x_2plus - 2) = *(padded_img + (y + 1) * x_2plus - 3);
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

	/////////////
	// Scaling //
	/////////////

	void scale_05(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * x_size + x;
				*(out + pos) = (uint8_t)(0.5f * *(in + pos));
			}
		}
	};

	void scale_13(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * x_size + x;
				*(out + pos) = (uint8_t)(1.3f * *(in + pos));
			}
		}
	};

	void scale_24(uint8_t* in, uint8_t* out, size_t x_size, size_t y_size) {
		size_t x, y;
		for (y = 0; y < y_size; y += 1) {
			for (x = 0; x < x_size; x += 1) {
				size_t pos = y * x_size + x;
				*(out + pos) = (uint8_t)(2.4f * *(in + pos));
			}
		}
	};
}
