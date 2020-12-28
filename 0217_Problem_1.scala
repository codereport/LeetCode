// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
// Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

def maximumWealth(accounts: Array[Array[Int]]): Int = {
    accounts.map(_.sum).max
}

// Alternative (remove braces)
def maximumWealth(accounts: Array[Array[Int]]): Int =
    accounts.map(_.sum).max
