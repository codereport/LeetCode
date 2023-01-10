// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 5 ms

public int maximumCount(int[] nums) {
    return Math.max(
        (int) Arrays.stream(nums).filter(e -> e > 0).count(),
        (int) Arrays.stream(nums).filter(e -> e < 0).count());
}
