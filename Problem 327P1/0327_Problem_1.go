// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 15 ms

func maximumCount(nums []int) int {
    var pos, neg int = 0, 0
    for _, e := range nums {
	    if e > 0 {
            pos++
        } else if e < 0 {
            neg++
        }
    }
    if pos > neg {
        return pos
    } else {
        return neg
    }
}
