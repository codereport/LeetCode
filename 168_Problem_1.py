# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
# Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
# Video Solution:          https://youtu.be/gZLZPrgqw2A
        
# Solution 1 (bad)

def findNumbers(self, nums: List[int]) -> int:
    res = 0
    for num in nums:
        if (len(str(num)) % 2 == 0):
            res += 1
    return res

# Solution 2 (good - idiomatic)

def findNumbers(self, nums: List[int]) -> int:
        return len([i for i in nums if len(str(i)) % 2 == 0])

# Solution 3 (bad - non-idiomatic)

def findNumbers(self, nums: List[int]) -> int:
    s = map(str, nums)
    i = map(len, s)
    j = filter(lambda e: e % 2 == 0, i)
    return len(list(j))
