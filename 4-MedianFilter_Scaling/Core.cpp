#include "Core.h"

std::queue<void*>* q_ptrs = new std::queue<void*>();

ExecResult::ExecResult(bool simd_enabled) { this->simd_enabled = simd_enabled; };

ExecResult* ExecResult::print() {
	if (this->c_error == nullptr) {
		std::cout << "C " << this->c_time << " ms";
	} else {
		std::cout << "C : " << this->c_error;
	}
	if (this->simd_enabled) {
		if (this->simd_error == nullptr) {
			std::cout << " / SIMD " << this->simd_time << " ms";
		} else {
			std::cout << " / SIMD : " << this->simd_error;
		}
	}
	std::cout << std::endl;

	return this;
};

ExecResult* __exec_base(std::function<void(void)> c_func, std::function<void(void)> simd_func,
												std::function<void(void)> c_flush, std::function<void(void)> simd_flush,
												bool enable_simd, unsigned short loop_max) {
	ExecResult* result = new ExecResult(enable_simd);
	CPerfCounter timer;
	double c_time = 0;
	double simd_time = 0;

	try {
		for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
			c_flush();
			timer.Reset();
			timer.Start();
			c_func();
			timer.Stop();
			c_time += timer.GetElapsedTime();
		}
		result->c_time = c_time / (double)loop_max * 1000.0;
	} catch (const char* error) {
		result->c_error = error;
	} catch (...) {
		result->c_error = "Unknown error occurred";
	}

	if (enable_simd) {
		try {
			for (unsigned short loop_cnt = 0; loop_cnt < loop_max; loop_cnt += 1) {
				simd_flush();
				timer.Reset();
				timer.Start();
				simd_func();
				timer.Stop();
				simd_time += timer.GetElapsedTime();
			}
			result->simd_time = simd_time / (double)loop_max * 1000.0;
		} catch (const char* error) {
			result->simd_error = error;
		} catch (...) {
			result->simd_error = "Unknown error occurred";
		}
	}

	return result;
};
