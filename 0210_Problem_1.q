/ code_report Solution
/ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
/ Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

maxDepth: { max sums {$[x = "(" ; 1 ; -1]} each x where (x in "()") }

/ Alternative solution
maxDepth: { max sums (-) over "()" =/:\: x }
