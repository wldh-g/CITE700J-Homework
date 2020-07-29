#ifndef _FILT_H_
#define _FILT_H_

#include <cstdint>
#include <initializer_list>
#include <vector>

namespace filt {
	template<typename T>
	class Filter {
	public:
		size_t size;
		std::vector<std::vector<T>*>* kernel;

		Filter(size_t size, std::initializer_list<std::initializer_list<T>> kernel) : size(size) {
			this->kernel = new std::vector<std::vector<T>*>();
			for (auto row : kernel) {
				auto row_vec = new std::vector<T>();
				row_vec->assign(row.begin(), row.end());
				this->kernel->push_back(row_vec);
			}
		};

		~Filter() {
			delete this->kernel;
		};
	};

	extern const Filter<int8_t>* ones_3x3;
	extern const Filter<int8_t>* sobel_x;
	extern const Filter<int8_t>* sobel_y;

	inline void unallocate() {
		delete ones_3x3;
		delete sobel_x;
		delete sobel_y;
	};
}

#endif // _FILT_H_
