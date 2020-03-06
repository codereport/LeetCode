/ code_report Solution
/ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
/ Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

/ Solution 1
checkIfExist: any ({(x[0] = 2 * x[1]) and 0 <> x[0]} each x cross x) , 1 < sum 0 = x

/ Solution 2
checkIfExist: any (2 = (%) over flip y cross y: x where 0 <> x) , 1 < sum 0 = x
