# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

def findGCD(self, nums: List[int]) -> int:
    return math.gcd(min(nums), max(nums))
