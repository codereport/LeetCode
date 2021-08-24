// Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/
// Run Dlang: https://run.dlang.io/is/5vmp5W

import std.algorithm : minElement, maxElement;
import std.numeric : gcd;

int findGCD(const int[] nums) {
    return gcd(nums.minElement, nums.maxElement);
}
