// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/

// Solution 1
// LeetCode Benchmark: 3 ms

pub fn maximum_count(nums: Vec<i32>) -> i32 {
    let pos: i32 = nums.clone().into_iter().filter(|e| *e > 0).count() as i32;
    let neg: i32 = nums.into_iter().filter(|e| *e < 0).count() as i32;
    std::cmp::max(pos, neg)
}

// Solution 2
// LeetCode Benchmark: 3 ms

pub fn maximum_count(nums: Vec<i32>) -> i32 {
    let (pos, neg) = nums.into_iter().fold((0, 0), |(pos, neg), e| match e {
        1.. => (pos + 1, neg),
        ..0 => (pos, neg + 1),
        _ => (pos, neg),
    });
    std::cmp::max(pos, neg)
}
