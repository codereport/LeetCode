# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

sub findGCD ($nums) { 
    $nums.min gcd $nums.max            
}
