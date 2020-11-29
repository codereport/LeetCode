// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
// Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

func maximumWealth(_ accounts: [[Int]]) -> Int {
    accounts.map{ $0.reduce(0, +) }.reduce(0, max)
}
