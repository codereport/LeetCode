// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

func maxDepth(s: String) -> Int {
    return  s.filter { "()".contains($0) }
             .map { $0 == "(" ? 1 : -1 }
             .reduce(into: []) { $0.append(($0.last ?? 0) + $1) }
             .max() ?? 0
}
