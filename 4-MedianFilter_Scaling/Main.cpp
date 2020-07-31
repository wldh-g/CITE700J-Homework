#include <filesystem>
#include "Core.h"
#include "Tasks.h"

int main() {
	std::filesystem::create_directory("output");

	// Tasks
	//task::median_filter(false);
	std::cout << std::endl;
	task::scaling(false);
	std::cout << std::endl;
	task::scaling_unrolled(false);

	return __exit(0);
}
