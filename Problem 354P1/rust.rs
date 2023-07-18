// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

// Imperative solution
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=780788cb8507c626ae25bb93c3efc323
pub fn sum_of_squares(nums: Vec<i32>) -> i32 {
    let n = nums.len();
    let mut res = 0;
    for (i, x) in nums.iter().enumerate() {
        if n % (i + 1) == 0 {
            res += x * x;
        }
    }
    res
}

// Functional solution
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=9f9deaf9d20434d901d2ee55fc99c7e4
pub fn sum_of_squares(nums: Vec<i32>) -> i32 {
    nums.iter()
        .enumerate()
        .filter(|(i, _)| nums.len() % (i + 1) == 0)
        .map(|(_, x)| x * x)
        .sum()
}

// Tests
fn main() {
    println!("{:?}", sum_of_squares(vec![1, 2, 3, 4])); // 21
    println!("{:?}", sum_of_squares(vec![2, 7, 1, 19, 18, 3])); // 63
}
