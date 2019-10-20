# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-15/problems/max-consecutive-ones/
# Problem Link (Practice): https://leetcode.com/problems/max-consecutive-ones/

def group(l):
    return [list(x) for _, x in itertools.groupby(l)]

class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        return max(len(x) if x[0] == 1 else 0 for x in group(nums))
