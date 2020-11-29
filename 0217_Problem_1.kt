// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
// Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

fun maximumWealth(accounts: Array<IntArray>): Int {
    return accounts.map { it.sum() } 
                   .max()!!
}
