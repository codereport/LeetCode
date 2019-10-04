# code_report
# Problem Link: https://leetcode.com/problems/maximum-number-of-balloons/

def maxNumberOfBalloons(self, t: str) -> int:
    return min(t.count(a) // b for a, b in zip('balon', [1,1,2,2,1]))
