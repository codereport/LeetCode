// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Video Link:              https://youtu.be/pDbDtGn1PXk
// Rust Playground Link:    https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=3641de477438f32ad2faa2ef544aaa15

pub fn count_negatives(grid: Vec<Vec<i32>>) -> i32 {
    return grid.iter()
               .flatten()
               .filter(|i| i < &&0i32)
               .count() as i32;
}
