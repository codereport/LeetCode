# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

# Solution 1 (original)
function find_gcd(nums)
    gcd(min(nums...), max(nums...))
end

# Solution 2 (assignment form)
find_gcd(nums) = gcd(min(nums...), max(nums...))

# Solution 3 (use minimum/maximum)
find_gcd(nums) = gcd(minimum(nums), maximum(nums))
            
# Soluiton 4 (use extrema)
find_gcd(nums) = gcd(extrema(nums)...)

# Solution 5 (POINT FREE!)
find_gcd = gcd ∘ collect ∘ extrema
