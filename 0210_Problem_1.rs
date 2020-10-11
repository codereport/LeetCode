// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

pub fn max_depth(s: String) -> i32 {
    return s.chars()
            .filter(|&c| "()".contains(c))
            .map(|c| if c == '(' {1} else {-1})
            .scan(0, |acc, x| { *acc += x; Some(*acc) })
            .max()
            .unwrap_or(0);
}
