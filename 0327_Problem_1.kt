// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// Kotlin Playground: https://pl.kotl.in/fEP1tbgzc
// LeetCode Benchmark: 228 ms

fun maximumCount(nums: IntArray): Int =
    maxOf(nums.count{ e -> e < 0 }, 
          nums.count{ e -> e > 0 })

