// Problem Link: https://leetcode.com/problems/maximum-subarray/
// Kotlin Playground: https://pl.kotl.in/6vqoX0ust

fun maxSubArray(nums: List<Int>): Int {
    return nums.runningReduce{ a, b -> maxOf(a + b, b) }
               .maxOrNull()!!
}
