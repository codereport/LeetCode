// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

fun maxDepth(s: String)
    = s.filter{ it in "()" }
       .map{ if (it == '(') 1 else -1 }
       .scan(0){ acc, v -> acc + v }
       .max()
