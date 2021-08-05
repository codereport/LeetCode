// Problem Links: https://leetcode.com/problems/maximum-subarray/

def maxSubArray(nums: Array[Int]): Int = {
    val x = nums.scan(0)((a, b) => Math.max(0, a + b)).max
    return if (x == 0) nums.max else x
}
