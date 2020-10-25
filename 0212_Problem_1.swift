// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-212/problems/slowest-key/
// Problem Link (Practice): https://leetcode.com/problems/slowest-key/

func slowestKey(_ t: [Int], _ k: String) -> Character {
    let d = zip(t, [0] + t).map(-)
    let e = zip(Array(k), d.map{ $0 == d.max() })
    return e.filter{ $1 }.map { $0.0 }.max()!
}
