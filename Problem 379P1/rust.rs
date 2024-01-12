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

// Another solution
pub fn area_of_max_diagonal(dimensions: Vec<Vec<i32>>) -> i32 {
    let sum_sq = |v: &Vec<i32>| v[0] * v[0] + v[1] * v[1];
    let prod = |v: &Vec<i32>| v[0] * v[1];
    let rank = |v: &&Vec<i32>| (sum_sq(v), prod(v));
    dimensions //
        .iter()
        .max_by_key(rank)
        .map_or(0, prod)
}
