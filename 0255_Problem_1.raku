# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

# Solution 1 (original)
sub findGCD ($nums) { 
    $nums.min gcd $nums.max            
}

# Solution 2 (use minmax)
sub findGCD(\nums) {
    [gcd] nums.minmax.bounds
}
