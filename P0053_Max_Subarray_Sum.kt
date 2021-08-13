// Problem Link: https://leetcode.com/problems/maximum-subarray/

fun maxSubArray(nums: List<Int>): Int {
    return nums.runningReduce{ a, b -> maxOf(a + b, b) }
               .maxOrNull()!!
}
