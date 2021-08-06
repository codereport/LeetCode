// Problem Link: https://leetcode.com/problems/maximum-subarray/

def maxSubArray(nums: Array[Int]): Int = 
    nums.scan(0)((a, b) => Math.max(b, a + b))
        .drop(1)
        .max
