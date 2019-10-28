// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-160/problems/find-positive-integer-solution-for-a-given-equation/
// Problem Link (Practice): https://leetcode.com/problems/find-positive-integer-solution-for-a-given-equation/

vector<vector<int>> findSolution(CustomFunction& f, int z) {
    vector<vector<int>> ans;
    for (int x = 1; x <= 1000; ++x)
        for (int y = 1; y <= 1000; ++y)
            if (f.f(x, y) == z)
                ans.push_back({x, y});
    return ans;
}
