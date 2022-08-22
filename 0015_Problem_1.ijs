NB. code_report Solution
NB. Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-15/problems/max-consecutive-ones/
NB. Problem Link (Practice): https://leetcode.com/problems/max-consecutive-ones/

NB. Original solution from Mar 20, 2020
sliding =: 4 : '(1 ,: x) <;._3 y'
differ  =: 3 : '1, >~:/ each 2 sliding y'
   
chunk   =: 3 : '(differ y) <;.1 y'
sum     =: +/
max     =: >./
open    =: >
   
maxConsecutiveOnes =: 3 : 'max open sum each chunk y'

NB. Revised solution on Aug 21, 2022
max          =. >./
chunkLengths =. {{ (#;._1) 0,y }}

maxConsecutiveOnes =. max @ chunkLengths

NB. Without naming
maxConsecutiveOnes =. [: >./ [: (#;._1) 0,]  NB. tacit
maxConsecutiveOnes =. {{ >./ (#;._1) 0,y }}  NB. explicit
