// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

func countNegatives(_ grid: [[Int]]) -> Int {
    return grid.flatMap{ $0 }
               .filter{ $0 < 0 }
               .count
}
