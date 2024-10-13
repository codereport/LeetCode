use itertools::Itertools;

fn find_x_sum(nums: Vec<i32>, k: i32, x: i32) -> Vec<i32> {
    nums.windows(k as usize)
        .map(|window| {
            window
                .iter()
                .counts()
                .into_iter()
                .sorted_by(|a, b| b.1.cmp(&a.1).then(b.0.cmp(&a.0)))
                .take(x as usize)
                .map(|(k, v)| v as i32 * k)
                .sum()
        })
        .collect()
}

fn main() {
    // Tests
    println!("{:?}", find_x_sum([1, 1, 2, 2, 3, 4, 2, 3].to_vec(), 6, 2)); // [6, 10, 12]
    println!("{:?}", find_x_sum([3, 8, 7, 8, 7, 5].to_vec(), 2, 2)); // [11, 15, 15, 15, 12]
}
