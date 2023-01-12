# Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
# LeetCode Benchmark: 141 ms

def maximumCount(nums: List[int]) -> int:
    return max(
        len([x for x in nums if x < 0]),
        len([x for x in nums if x > 0]))
