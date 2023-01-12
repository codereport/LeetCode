// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 114 ms

func maximumCount(_ nums: [Int]) -> Int {
    max(nums.filter({ $0 > 0 }).count, 
        nums.filter({ $0 < 0 }).count)
}
