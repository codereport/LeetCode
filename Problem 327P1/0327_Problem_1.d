// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// Godbolt: https://godbolt.org/z/1z8esfPh8

int maximumCount(const int[] nums) {
    return max(
        cast(int) nums.count!(x => x < 0), 
        cast(int) nums.count!(x => x > 0));
}
