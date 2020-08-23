# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
# Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

# Note this problem is very similar to MCO (Max Consecutive Ones)

# Solution 1 (awful code)

def threeConsecutiveOdds(self, arr: List[int]) -> bool:
    i, ans = 0, 0
    for e in arr:
        if e % 2 == 1:
            i += 1
            ans = max(ans, i)
        else:
            i = 0
    return ans >= 3

# Solution 2

def group(l):
    return [list(x) for _, x in itertools.groupby(l)]

def threeConsecutiveOdds(self, arr: List[int]) -> bool:
    return max(map(sum, group(map(lambda x: x % 2, arr)))) >= 3

# Wishful thinking (this syntax doesn't work)

def threeConsecutiveOdds(self, arr: List[int]) -> bool:
    return arr 
        |> map(lambda x: x % 2)
        |> group
        |> map(sum)
        |> max
        >= 3

# Solution #3 (closest we can get)

def group(l):
    return [list(x) for _, x in itertools.groupby(l)]

def threeConsecutiveOdds(self, arr: List[int]) -> bool:
    a = map(lambda x: x % 2, arr)
    b = group(a)
    c = map(b, sum)
    d = max(c)
    return d >= 3
