// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 606 ms

def maximumCount(nums: Array[Int]): Int =
    nums.count(_ < 0).max(nums.count(_ > 0))
