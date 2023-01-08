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