// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=fa896fe6e137440d7396301486c9379b

pub fn sum_of_squares(nums: Vec<i32>) -> i32 {
    let n = nums.len() as i32;
    (1..=n)
        .zip(nums)
        .filter(|(i, _)| n % i == 0)
        .map(|(_, x)| x * x)
        .sum()
}

// Tests
fn main() {
    println!("{:?}", sum_of_squares(vec![1, 2, 3, 4])); // 21
    println!("{:?}", sum_of_squares(vec![2, 7, 1, 19, 18, 3])); // 63
}
