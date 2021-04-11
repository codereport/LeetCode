// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

let maxDepth = Seq.map(function | '(' ->  1
                                | ')' -> -1     
                                | _   ->  0)
            >> Seq.scan(+) 0
            >> Seq.max
