# code_report Solution
# Problem Link: https://leetcode.com/contest/weekly-contest-155/problems/minimum-absolute-difference/

def minimumAbsDifference(self, arr: List[int]) -> List[List[int]]:
    arr.sort()
    min_diff = min(b - a for a, b in zip (arr, arr[1:]))
    return [[a,b] for a, b in zip (arr, arr[1:]) if b - a == min_diff]
