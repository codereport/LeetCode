# Solution 1
def minimumAverage(nums: List[int]) -> float:
    n = len(nums)
    s = sorted(nums)
    res = 100
    for i in range(n // 2):
        res = min(res, s[i] + s[n - i - 1])
    return res / 2

# Solution 2
def minimumAverage(nums: List[int]) -> float:
    n = len(nums) // 2
    s = sorted(nums)
    res = 100
    for a, b in zip(s[:n], s[-n:][::-1]):
        res = min(res, a + b)
    return res / 2

# Solution 3
def minimumAverage(nums: List[int]) -> float:
    n = len(nums) // 2
    s = sorted(nums)
    return min(a + b for a, b in zip(s[:n], s[-n:][::-1])) / 2

# Solution 4
def minimumAverage(nums: List[int]) -> float:
    n = len(nums) // 2
    s = sorted(nums)
    return min(map(add, s[:n], s[-n:][::-1])) / 2

# Solution 5
def minimumAverage(nums: List[int]) -> float:
    n = len(nums) // 2
    s = sorted(nums)
    l, r = s[:n], s[-n:][::-1]
    return min(map(add, l, r)) / 2
