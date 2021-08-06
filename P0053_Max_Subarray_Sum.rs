// Problem Link: https://leetcode.com/problems/maximum-subarray/

use core::cmp::max;

pub fn max_sub_array(nums: Vec<i32>) -> i32 {
    return nums.iter()
               .scan(0, |acc, x| { *acc = max(*x, x + *acc); Some(*acc) })
               .max()
               .unwrap();
}
  
