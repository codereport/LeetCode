# https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

# Solution 1
def minMovesToSeat(self, a, b):
    a.sort()
    b.sort()
    res = 0
    for x, y in zip(a, b):
        res += abs(x - y)
    return res

# Solution 2
def minMovesToSeat(self, a, b):
    return sum(abs(x - y) for x, y in zip(sorted(a), sorted(b)))
