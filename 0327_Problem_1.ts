// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 81 ms

function maximumCount(nums: number[]): number {
    return Math.max(
        nums.filter(e => e > 0).length,
        nums.filter(e => e < 0).length)
};
