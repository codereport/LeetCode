NB. code_report Solution
NB. Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-15/problems/max-consecutive-ones/
NB. Problem Link (Practice): https://leetcode.com/problems/max-consecutive-ones/

sliding =: 4 : '(1 ,: x) <;._3 y'
differ  =: 3 : '1, >~:/ each 2 sliding x'
   
chunk   =: 3 : '(differ x) <;.1 x'
sum     =: +/
max     =: >./
open    =: >
   
maxConsecutiveOnes =: 3 : 'max open sum each chunk x'
