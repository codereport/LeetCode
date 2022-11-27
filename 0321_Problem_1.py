# Problem Link: https://leetcode.com/problems/find-the-pivot-integer

# Solution 1
def pivotInteger(n):
    a, b = 0, n * (n + 1) / 2
    for i in range(1, n + 1):
        a += i
        if a == b: return i
        b -= i
    return -1

# Solution 2 (BQN inspired)
from operator  import add
from itertools import accumulate

def pivotInteger(n):
    i = range(1, n + 1)
    l = [a == b for a, b in zip(accumulate(i, add), list(accumulate(i[::-1], add))[::-1])]
    return l.index(True) + 1 if any(l) else -1

# Tests
print(pivotInteger(8))
print(pivotInteger(1))
print(pivotInteger(4))
