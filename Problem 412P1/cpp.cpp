#include <vector>
#include <ranges>

std::vector<int> getFinalState(std::vector<int> nums, int k, int m) {
    while (k--) {
        auto i = std::ranges::min_element(nums);
        *i = *i * m;
    }
    return nums;
}
