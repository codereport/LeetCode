# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
# Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

def maximumWealth(self, accounts):
    return max(sum(row) for row in accounts)
