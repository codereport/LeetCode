// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 12 ms

int maximumCount(int* nums, int numsSize){
    int pos = 0, neg = 0;
    for (int i = 0; i < numsSize; ++i) {
        if (nums[i] > 0) ++pos;
        else if (nums[i] < 0) ++neg;
    }
    return pos > neg ? pos : neg;
}