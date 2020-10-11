// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

def maxDepth(s: String): Int = {
    return s.filter("()" contains _)
            .map(c => if (c == '(') 1 else -1)
            .scan(0)(_ + _)
            .max
}
