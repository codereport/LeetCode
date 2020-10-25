// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-212/problems/slowest-key/
// Problem Link (Practice): https://leetcode.com/problems/slowest-key/

char slowestKey(vector<int>& t, string k) {
    auto d = std::vector(t.size(), 0);
    std::adjacent_difference(t.cbegin(), t.cend(), d.begin());
    return std::inner_product(d.cbegin(), d.cend(), k.begin(),
        std::pair{-1, 'a'}, 
        [](auto a, auto b) { return std::max(a, b); },
        [](auto a, auto b) { return std::pair{a, b}; }).second;
}
