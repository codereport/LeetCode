// Problem Link: https://leetcode.com/problems/maximum-area-of-longest-diagonal-rectangle/description/

// A solution
pub fn area_of_max_diagonal(dimensions: Vec<Vec<i32>>) -> i32 {
    let op = |v: &Vec<i32>| (v[0] * v[0] + v[1] * v[1], v[0] * v[1]);
    dimensions //
        .iter()
        .map(op)
        .max()
        .unwrap()
        .1
}
