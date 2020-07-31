#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
	std::filesystem::create_directory("output");

	// Tasks
	task::general_convolution_unsigned(false);
	std::cout << std::endl;
	task::general_convolution_signed(false);
	std::cout << std::endl;
	task::sobel_filter(false);

	return __exit(0);
}
