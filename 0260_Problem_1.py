# Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

import sys

def maximum_difference(nums):
    result, min_so_far = -1, sys.maxsize
    for elem in nums:
        min_so_far = min(min_so_far, elem)
        if elem > min_so_far:
            result = max(result, elem - min_so_far)
    return result

# More concise variable names
def maximum_difference(nums):
    res, lo = -1, sys.maxsize
    for e in nums:
        lo = min(lo, e)
        if e > lo:
            res = max(res, e - lo)
    return res
