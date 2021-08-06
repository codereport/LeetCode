// Problem Link: https://leetcode.com/problems/maximum-subarray/
// Godbolt: https://www.godbolt.org/z/fcqoYhEcK

#include <range/v3/view/partial_sum.hpp>

auto max_sub_array(auto nums) {
    return std::ranges::max(
        ranges::views::partial_sum(nums, 
            [](auto a, auto b) { return std::max(a + b, b); }));
}
