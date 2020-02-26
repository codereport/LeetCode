// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Video Link:              https://youtu.be/pDbDtGn1PXk

fun countNegatives(grid: Array<IntArray>): Int {
    return grid.flatMap { it.asIterable() }
               .filter { it < 0 }
               .count();
}
