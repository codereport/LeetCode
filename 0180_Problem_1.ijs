NB. code_report Solution
NB. Problem Link (Contest): https://leetcode.com/contest/weekly-contest-180/problems/lucky-numbers-in-a-matrix/
NB. Problem Link (Contest): https://leetcode.com/problems/lucky-numbers-in-a-matrix/

inter =: [ -. -.
findNumbers =: 3 : '(<./ "1 y) inter >./ "1 |: y'
