// Problem Link: https://leetcode.com/contest/weekly-contest-269/problems/find-target-indices-after-sorting-array/
// Godbolt: https://godbolt.org/z/8z8Esb888

// Solution 1
auto targetIndices(std::vector<int> nums, int target) {
    std::ranges::sort(nums);
    auto [f, l]      = std::ranges::equal_range(nums, target);
    auto const count = std::distance(f, l);
    auto const start = std::distance(nums.begin(), f);
    return std::views::iota(start, start + count);
} 

// Solution 2
auto targetIndices(std::vector<int> nums, int target) {
    auto start = std::ranges::count_if(nums, [target](auto e) { return e <  target; });
    auto count = std::ranges::count_if(nums, [target](auto e) { return e == target; });
    return std::views::iota(start, start + count);
}
