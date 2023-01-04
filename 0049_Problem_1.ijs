NB. code_report Solution
NB. Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-49/problems/longest-continuous-increasing-subsequence/
NB. Problem Link (Practice): https://leetcode.com/problems/longest-continuous-increasing-subsequence/

sliding =. <\ 
chunk   =. <;._2
sum     =. +/
max     =. >./
open    =. >
   
findLengthOfLCIS =. {{ 1 + max open sum each chunk open </ each 2 sliding y }}

NB. or

findLengthOfLCIS =. {{ 1 + >./ > +/ each <;._2 > </ each 2<\ y }}

NB. or 

findLengthOfLCIS =. {{ 1 + >./ +/"1 > <;._2 </"1 >2<\ y }}

NB. or

findLengthOfLCIS =. {{ 1 + >./ (#;._1) 0,2</\ y }}
