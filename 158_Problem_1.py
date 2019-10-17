# code_report Solution
# Problem Link: https://leetcode.com/contest/weekly-contest-158/problems/split-a-string-in-balanced-strings/

def balancedStringSplit(self, s: str) -> int:
    a = [1 if c is 'R' else -1 for c in s]
    b = list(itertools.accumulate(a))
    return b.count(0)
