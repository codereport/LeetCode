#include <vector>
#include <ranges>

auto getFinalState(std::vector<int> nums, int k, int m) {
    while (k--) {
        auto i = std::ranges::min_element(nums);
        *i *= m;
    }
    return nums;
}
