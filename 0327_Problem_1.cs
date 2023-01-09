// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 112 ms

public int MaximumCount(int[] nums) {
    return  Math.Max(
        nums.Count(x => x < 0),
        nums.Count(x => x > 0));
}
