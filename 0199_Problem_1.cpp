// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-199/problems/shuffle-string/
// Problem Link (Practice): https://leetcode.com/problems/shuffle-string/

string restoreString(string s, vector<int>& is) {
    string ans(s.size(), '.');
    for (int i = 0; i <  s.size(); i++) ans[is[i]] = s[i];
    return ans;
}
