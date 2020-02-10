// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
// Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

auto checkIfExist(vector<int>& a) -> bool {
    set s(a.begin(), a.end());
    return count(a.begin(), a.end(), 0) > 1 || 
        any_of(s.begin(), s.end(),
            [&](auto e) { return e != 0 && s.count(2 * e); });
}
