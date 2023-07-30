// Problem Link: https://leetcode.com/problems/number-of-employees-who-met-the-target/

pub fn number_of_employees_who_met_target(hours: Vec<i32>, target: i32) -> i32 {
    hours.into_iter().filter(|h| h >= &target).count() as i32
}
