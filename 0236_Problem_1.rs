// Problem Link: https://leetcode.com/problems/sign-of-the-product-of-an-array/
// Rust Playground: https://play.rust-lang.org/?version=stable&mode=debug&edition=2021&gist=7bfcadf3521291b6bca6c78071ac032a

use num;

pub fn array_sign(nums: Vec<i32>) -> i32 {
    nums.into_iter()
        .map(num::signum)
        .product()
}

// Tests
pub fn main() {
    println!("{:?}", array_sign(vec![-1,-2,-3,-4,3,2,1])); // 1
    println!("{:?}", array_sign(vec![1,5,0,2,-3]));        // 0
    println!("{:?}", array_sign(vec![-1,1,-1,1,-1]));    // -1
}
