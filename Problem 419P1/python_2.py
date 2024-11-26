# Link: https://leetcode.com/problems/find-x-sum-of-all-k-long-subarrays-i

from more_itertools import sliding_window
from collections import Counter
from math import prod


def FindXSum(nums, k, x):
    return [
        sum(
            map(
                lambda xs: prod(xs),
                sorted([v, k] for k, v in Counter(window).items())[-x:],
            )
        )
        for window in sliding_window(nums, k)
    ]


# Tests
print(FindXSum([1, 1, 2, 2, 3, 4, 2, 3], 6, 2))  # [6,10,12]
print(FindXSum([3, 8, 7, 8, 7, 5], 2, 2))  # [11,15,15,15,12]
