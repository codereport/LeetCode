// Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=c882a4098ed308973255fe0b059a90a7

pub fn find_gcd(nums: Vec<i32>) -> i32 {
    num::integer::gcd(*nums.iter().max().unwrap(), 
                      *nums.iter().min().unwrap())
}
