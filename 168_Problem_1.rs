// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
// Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
// Video Solution:          https://youtu.be/gZLZPrgqw2A
// Rust Playground Link:    https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=c9c11e0d5b5c03e931bfeda35e6114cc

pub fn find_numbers(nums: Vec<i32>) -> i32 {
    return nums.iter()
               .map(|i| i.to_string().len())
               .filter(|i| i % 2 == 0)
               .count() as i32;
}
