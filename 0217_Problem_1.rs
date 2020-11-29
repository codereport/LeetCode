// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
// Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

pub fn maximum_wealth(accounts: Vec<Vec<i32>>) -> i32 {
    accounts.iter()
            .map(|x| x.iter().sum())
            .max()
            .unwrap()
}
