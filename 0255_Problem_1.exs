# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

def find_gcd(nums) do
    Integer.gcd(Enum.min(nums), Enum.max(nums))
end
