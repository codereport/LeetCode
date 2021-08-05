// Problem Links: https://leetcode.com/problems/maximum-subarray/

use core::cmp::max;

pub fn max_sub_array(nums: Vec<i32>) -> i32 {
    let x = nums.iter()
                .scan(0, |acc, x| { *acc = max(0, x + *acc); Some(*acc) })
                .max()
                .unwrap();
    if x == 0 { *nums.iter().max().unwrap() } else { x }
}
  
