/ code_report Solution
/ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
/ Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

/ Solution 1
smallerNumbersThanCurrent: {sum flip x >/:\: x}

/ Solution 2
smallerNumbersThanCurrent: {sum (count x) cut (<) over flip x cross x}
