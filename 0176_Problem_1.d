// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Video Link:              https://youtu.be/pDbDtGn1PXk

import std.stdio;
import std.array : join;
import std.algorithm.searching : count;

int countNegatives(int[][] grid) {
    return cast(int) grid
        .join
        .count!(x => x < 0);
}
