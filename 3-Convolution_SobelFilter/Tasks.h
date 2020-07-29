#ifndef _TASK_H_
#define _TASK_H_

namespace task {
	void flipx_flipy(bool enable_simd = true);
	void addition_8b_16b(bool enable_simd = true);
	void transposes(bool enable_simd = true);
	void general_convolution_unsigned(bool enable_simd = true);
	void general_convolution_signed(bool enable_simd = true);
	// void sobel_filter(bool enable_simd = true);
}

#endif // _TASK_H_
