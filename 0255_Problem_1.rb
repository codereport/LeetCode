# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

# Solution 1 (original)
def find_gcd(nums)
    return nums.max.gcd(nums.min)
end

# Solution 2 (omit return)
def find_gcd(nums)
    nums.max.gcd(nums.min)
end

# Solution 3 (use minmax)
def find_gcd(nums)
    nums.minmax.reduce(:gcd)
end
