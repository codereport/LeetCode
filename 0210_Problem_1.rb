# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
# Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

def max_depth(s)
    return s.tr('^()','')
            .chars
            .map{ |c| c == '(' ? 1 : -1 }
            .inject([]){ |acc, x| acc << acc.last + x }
            .push(0)
            .max
end
