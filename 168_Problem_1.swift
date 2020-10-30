// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
// Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

func findNumbers(_ nums: [Int]) -> Int {
    return nums.map { String($0).count }
               .filter { $0 % 2 == 0}
               .count
}
