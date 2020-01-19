// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
// Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

pub fn find_numbers(nums: Vec<i32>) -> i32 {
    return nums.iter()
               .map(|i| i.to_string().len())
               .filter(|i| i % 2 == 0)
               .count() as i32;
}
