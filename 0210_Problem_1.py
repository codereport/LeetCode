# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
# Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

# Solution 1

from itertools import accumulate

def max_depth(s):
    return max(accumulate((1 if c == '(' else -1) for c in s if c
               in '()'), default=0)

# Solution 2

from itertools import accumulate

def max_depth(s):
    return max(accumulate(filter(None, map({'(': 1, ')': -1}.get, s))),
               default=0)
