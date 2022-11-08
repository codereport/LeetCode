// Problem Link: https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array

fn find_special_integer(arr: Vec<i32>) -> i32 {
    *arr.into_iter()
        .counts()
        .iter()
        .max_by_key(|(_, v)| *v)
        .unwrap()
        .0
}
