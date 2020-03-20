NB. code_report Solution
NB. Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-49/problems/longest-continuous-increasing-subsequence/
NB. Problem Link (Practice): https://leetcode.com/problems/longest-continuous-increasing-subsequence/

sliding =: 4 : '(1 ,: x) <;._3 y'
differ  =: 3 : '1, >~:/ each 2 sliding y'
   
chunk   =: 3 : '(differ y) <;.1 y'
sum     =: +/
max     =: >./
open    =: >
   
findLengthOfLCIS =: 3 : '1 + max open sum each chunk open <:/ each 2 sliding y'
