# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
# Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

func maximumWealth(accounts: seq[seq[int]]): int = 
  accounts.mapIt(foldl(it, a + b)).foldl(max(a, b))
