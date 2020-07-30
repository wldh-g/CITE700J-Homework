#ifndef _FILT_H_
#define _FILT_H_

#include <algorithm>
#include <cstdint>
#include <initializer_list>
#include <vector>

namespace filt {
	template<typename T, typename R = int32_t>
	class Filter {
	public:
		size_t size;
		size_t size2;
		T* kernel;
		R kernel_sum;
		R scale;

		Filter(size_t size, std::initializer_list<T> kernel) : size(size) {
			this->size2 = size * size;
			this->scale = (R)(size * size);
			this->kernel = new T[size2];
			this->kernel_sum = 0;
			std::copy(kernel.begin(), kernel.end(), this->kernel);
			R kernel_sum_plus = 0;
			R kernel_sum_minus = 0;
			for (size_t i = 0; i < size2; i += 1) {
				if (this->kernel[i] > 0) {
					kernel_sum_plus += this->kernel[i];
				} else {
					kernel_sum_minus += this->kernel[i];
				}
			}
			if (-1 * kernel_sum_minus > kernel_sum_plus) {
				this->kernel_sum = -1 * kernel_sum_minus;
			} else {
				this->kernel_sum = kernel_sum_plus;
			}
		};

		~Filter() {
			delete this->kernel;
		};
	};

	extern const Filter<int8_t>* blur_3;
	extern const Filter<int8_t>* blur_15;
	extern const Filter<int8_t>* sharpen_3;
	extern const Filter<int8_t>* sobel_x;
	extern const Filter<int8_t>* sobel_y;

	inline void unallocate() {
		delete blur_3;
		delete blur_15;
		delete sharpen_3;
		delete sobel_x;
		delete sobel_y;
	};
}

#endif // _FILT_H_
