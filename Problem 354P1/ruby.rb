# Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/ 

# Solution 1
def sum_of_squares(nums)
    nums.zip(1..nums.length)
        .filter { | _, i| nums.length % i == 0 }
        .map { | x, _ | x * x }
        .sum
end

# Solution 2
def sum_of_squares(nums)
    nums.map
        .with_index { |x, i| nums.length % (i + 1) == 0 ? x * x : 0 }
        .sum
end
