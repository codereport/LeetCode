
// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
// Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

import std.algorithm.setops : cartesianProduct;
import std.algorithm.iteration : map, sum;
import std.range : chunks;

auto smallerNumbersThanCurrent(int[] nums) {
    return nums
        .cartesianProduct(nums)
        .map!(x => x[0] > x[1] ? 1 : 0)
    	.chunks(nums.length)
        .map!(x => x.sum);
}
