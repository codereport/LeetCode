// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/

// Solution 1
// LeetCode Benchmark: 15 ms

int maximumCount(vector<int>& nums) {
    auto [a, b] = std::equal_range(nums.begin(), nums.end(), 0);
    return std::max(
        std::distance(nums.begin(), a), 
        std::distance(b, nums.end()));
}

// Solution 2
// LeetCode Benchmark: 29 ms

int maximumCount(vector<int>& nums) {
    auto pos = std::count_if(nums.begin(), nums.end(), [](auto e) { return e > 0; });
    auto neg = std::count_if(nums.begin(), nums.end(), [](auto e) { return e < 0; });
    return std::max(pos, neg);
}

// Solution 3 (C++20)

int maximumCount(vector<int>& nums) {
    auto pos = std::ranges::count_if(nums, [](auto e) { return e > 0; });
    auto neg = std::ranges::count_if(nums, [](auto e) { return e < 0; });
    return std::max(pos, neg);
}

// Solution 4
// LeetCode Benchmark: 23 ms

auto maximum_count(std::vector<int> nums) -> int {
    auto const [pos, neg] = std::accumulate(
        nums.cbegin(), nums.cend(), std::pair{0, 0}, [](auto p, auto e) {
            auto const [pos, neg] = p;
            return std::pair{pos + (e > 0), neg + (e < 0)};
        });
    return std::max(pos, neg);
}
