NB. code_report Solution
NB. Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-28/problems/student-attendance-record-i/
NB. Problem Link (Practice): https://leetcode.com/problems/student-attendance-record-i/

sliding =: 4 : '(1 ,: x) <;._3 y'
differ  =: 3 : '1, >~:/ each 2 sliding y'
chunk   =: 3 : '(differ y) <;.1 y'
sum     =: +/
max     =: >./
open    =: >

A =: 'A'
L =: 'L'
   
checkRecord =: 3 : '(3 > max open sum each chunk L=y) *. 2> sum A=y'
