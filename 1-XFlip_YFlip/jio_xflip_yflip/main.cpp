#include <iostream>
#include <cstdlib>
#include <functional>
#include "Timer.h"
#include "Func.h"

#define __uc unsigned char
#define __calc std::function<void(__uc*, __uc*, size_t, size_t)>

using std::cout;
using std::endl;

int main() {
	/********************
	 ** Initialization **
	 ********************/

	size_t x_size = 512, y_size = 512;
	size_t img_buf_size = x_size * y_size * sizeof(char);
	auto* input_img = new __uc[img_buf_size];
	auto* output_c_xflip_img = new __uc[img_buf_size];
	auto* output_c_yflip_img = new __uc[img_buf_size];
	auto* output_simd_xflip_img = new __uc[img_buf_size];
	auto* output_simd_yflip_img = new __uc[img_buf_size];

	/****************************
	 ** Define Escape Function **
	 ****************************/

	auto do_exit = [
		input_img,
		output_c_xflip_img, output_c_yflip_img,
		output_simd_xflip_img, output_simd_yflip_img
	](int code) -> int {
		delete[] input_img;
		delete[] output_c_xflip_img;
		delete[] output_c_yflip_img;
		delete[] output_simd_xflip_img;
		delete[] output_simd_yflip_img;
		exit(code);
		return code;
	};

	/**********************************
	 ** Define Image Function Caller **
	 **********************************/

	auto do_func = [x_size, y_size, img_buf_size](__calc func, __uc* img, __uc* output) -> double {
		const unsigned short loop_max = 2000;
		CPerfCounter timer;
		double cpu_time = 0;

		for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
			cache_flush((__m128i*)img, img_buf_size / 16);
			cache_flush((__m128i*)output, img_buf_size / 16);
			timer.Reset();
			timer.Start();
			func(img, output, x_size, y_size);
			timer.Stop();
			cpu_time += timer.GetElapsedTime();
		}

		return cpu_time / (double)loop_max * 1000.0;
	};

	/**********************************
	 ** Define Verification Function **
	 **********************************/

	auto is_img_diff = [img_buf_size](__uc* img_a, __uc* img_b) -> bool {
		for (size_t pixel_idx = 0; pixel_idx < img_buf_size; pixel_idx += 1) {
			if (img_a[pixel_idx] != img_b[pixel_idx]) {
				cout << "Diff : " << img_a[pixel_idx] << " != " << img_b[pixel_idx] << " in " << pixel_idx << endl;
				return true;
			}
		}
		return false;
	};

	/**********************************
	 ** Define Image Function Caller **
	 **********************************/

	auto save_img = [img_buf_size](__uc* img, const char* path) -> void {
		FILE* output_fp;
	};

	/*************************
	 ** Reading Input Image **
	 *************************/

	cout << "Opening image... ";
	FILE* input_fp;
	errno_t img_read_err = fopen_s(&input_fp, "usc.raw", "r");
	if (img_read_err != 0) {
		char img_read_err_desc[256] = { 0 };
		strerror_s(img_read_err_desc, img_read_err);
		cout << "Error opening input image : " << img_read_err_desc << endl;
		do_exit((int)img_read_err);
	}
	size_t read_count = fread_s(input_img, img_buf_size, x_size, y_size, input_fp);
	if (read_count == 0) {
		cout << "Error reading input image." << endl;
		do_exit(-1000);
	}
	fclose(input_fp);
	cout << "OK" << endl;

	/********************
	 ** Test Functions **
	 ********************/

	cout << "Testing C XFlip... " << do_func(c_xflip, input_img, output_c_xflip_img) << " ms" << endl;
	cout << "Testing SIMD XFlip... " << do_func(simd_xflip, input_img, output_simd_xflip_img) << " ms" << endl;
	cout << "Testing C YFlip... " << do_func(c_yflip, input_img, output_c_yflip_img) << " ms" << endl;
	cout << "Testing SIMD YFlip... " << do_func(simd_yflip, input_img, output_simd_yflip_img) << " ms" << endl;

	/********************
	 ** Verify Results **
	 ********************/

	cout << "Verifying results... ";
	if (is_img_diff(output_c_xflip_img, output_simd_xflip_img)) {
		cout << "Verification failed in XFlip. Stopping." << endl;
		do_exit(-2000);
	}
	else if (is_img_diff(output_c_yflip_img, output_simd_yflip_img)) {
		cout << "Verification failed in YFlip. Stopping." << endl;
		do_exit(-3000);
	}
	else {
		cout << "OK" << endl;
	}

	/******************
	 ** Save Results **
	 ******************/

	cout << "Saving results... ";
	save_img(output_c_xflip_img, "c_xflip.out");
	save_img(output_c_yflip_img, "c_yflip.out");
	save_img(output_simd_xflip_img, "simd_xflip.out");
	save_img(output_simd_yflip_img, "simd_yflip.out");
	cout << "OK" << endl;

	return do_exit(0);
}
