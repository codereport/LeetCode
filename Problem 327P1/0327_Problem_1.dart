// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 327 ms

int maximumCount(List<int> nums) {
    return max(
        nums.where((e) => e > 0).length,
        nums.where((e) => e < 0).length);
}
