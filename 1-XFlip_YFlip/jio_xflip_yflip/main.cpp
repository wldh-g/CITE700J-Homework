#include <iostream>
#include <cstdlib>
#include <cstring>
#include <cerrno>
#include <functional>
#include "Timer.h"
#include "Func.h"

#define _USE_SIMD_ false

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
	#if _USE_SIMD_
	auto* output_simd_xflip_img = new __uc[img_buf_size];
	auto* output_simd_yflip_img = new __uc[img_buf_size];
	#endif

	/****************************
	 ** Define Escape Function **
	 ****************************/

	auto do_exit = [&](int code) -> int {
		delete[] input_img;
		delete[] output_c_xflip_img;
		delete[] output_c_yflip_img;
		#if _USE_SIMD_
		delete[] output_simd_xflip_img;
		delete[] output_simd_yflip_img;
		#endif
		exit(code);
		return code;
	};

	/**********************************
	 ** Define Image Function Caller **
	 **********************************/

	auto do_func = [&](__calc func, __uc* img, __uc* output) -> double {
		const unsigned short loop_max = 2000;
		CPerfCounter timer;
		double cpu_time = 0;

		for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
			cache_flush((__m128i*)img, (unsigned int)(img_buf_size / 16));
			cache_flush((__m128i*)output, (unsigned int)(img_buf_size / 16));
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

	auto is_img_diff = [&](__uc* img_a, __uc* img_b) -> bool {
		for (size_t pixel_idx = 0; pixel_idx < img_buf_size; pixel_idx += 1) {
			if (img_a[pixel_idx] != img_b[pixel_idx]) {
				cout << "Diff : " << img_a[pixel_idx] << " != " << img_b[pixel_idx]
					<< " in " << pixel_idx << endl;
				return true;
			}
		}
		return false;
	};

	/**********************************
	 ** Define Image Function Caller **
	 **********************************/

	auto file_img = [&](const char* path, __uc* img, const char* mode) -> void {
		FILE* fp;
		errno_t img_open_err = fopen_s(&fp, path, mode);
		if (img_open_err != 0) {
			char img_open_err_desc[256] = { 0 };
			strerror_s(img_open_err_desc, img_open_err);
			cout << "Error opening input image : " << img_open_err_desc << endl;
			do_exit((int)img_open_err);
		}
		size_t hdl_count;
		if (strcmp(mode, "wb") == 0) {
			hdl_count = fwrite(img, x_size, y_size, fp);
		} else {
			hdl_count = fread_s(img, img_buf_size, x_size, y_size, fp);
		}
		if (hdl_count == 0) {
			char img_hdl_err_desc[256] = { 0 };
			strerror_s(img_hdl_err_desc, errno);
			cout << "Error on file handling (" << path << ") : " << img_hdl_err_desc << endl;
			do_exit(-1000);
		}
		fclose(fp);
	};

	/*************************
	 ** Reading Input Image **
	 *************************/

	cout << "Opening image... ";
	file_img("lena.raw", input_img, "r");
	cout << "OK" << endl;

	/********************
	 ** Test Functions **
	 ********************/

	cout << "Testing C XFlip... "
		<< do_func(c_xflip, input_img, output_c_xflip_img) << " ms" << endl;

	#if _USE_SIMD_
	cout << "Testing SIMD XFlip... "
		<< do_func(simd_xflip, input_img, output_simd_xflip_img) << " ms" << endl;
	#endif

	cout << "Testing C YFlip... "
		<< do_func(c_yflip, input_img, output_c_yflip_img) << " ms" << endl;

	#if _USE_SIMD_
	cout << "Testing SIMD YFlip... "
		<< do_func(simd_yflip, input_img, output_simd_yflip_img) << " ms" << endl;
	#endif

	/********************
	 ** Verify Results **
	 ********************/

	#if _USE_SIMD_
	cout << "Verifying results... ";
	if (is_img_diff(output_c_xflip_img, output_simd_xflip_img)) {
		cout << "Verification failed in XFlip. Stopping." << endl;
		do_exit(-2000);
	} else if (is_img_diff(output_c_yflip_img, output_simd_yflip_img)) {
		cout << "Verification failed in YFlip. Stopping." << endl;
		do_exit(-3000);
	} else {
		cout << "OK" << endl;
	}
	#endif

	/******************
	 ** Save Results **
	 ******************/

	cout << "Saving results... ";
	file_img("c_xflip.raw", output_c_xflip_img, "wb");
	file_img("c_yflip.raw", output_c_yflip_img, "wb");
	#if _USE_SIMD_
	file_img("simd_xflip.raw", output_simd_xflip_img, "wb");
	file_img("simd_yflip.raw", output_simd_yflip_img, "wb");
	#endif
	cout << "OK" << endl;

	return do_exit(0);
}
