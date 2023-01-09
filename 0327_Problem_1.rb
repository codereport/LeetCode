# Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
# LeetCode Benchmark: 111 ms

def maximum_count(nums)
    [nums.count(&:positive?), 
     nums.count(&:negative?)].max
end
