// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

// run.dlang.io: https://run.dlang.io/is/thpBfH

int maxDepth(string s) {
   return s.filter!(a => a == '(' || a == ')')
           .map!(a => a == '(' ? 1 : -1)
           .cumulativeFold!((a, b) => a + b)(0)
           .fold!max;
}
