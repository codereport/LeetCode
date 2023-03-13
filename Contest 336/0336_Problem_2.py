import itertools as it

def maxScore(nums: List[int]) -> int:
    return sum(i > 0 for i in it.accumulate(sorted(nums)[::-1]))
