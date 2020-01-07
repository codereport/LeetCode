// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
// Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

// C++11 Solution

int findNumbers(vector<int>& nums) {
    return accumulate(nums.cbegin(), nums.cend(), 0,
        [](auto a, auto b) {
            return a + (to_string(b).size() % 2 == 0);
        });
}

// C++20 Solution
// godbolt: https://godbolt.org/z/R_PMTn

auto findNumber(std::vector<int>& nums) {
    return nums
        | rv::transform([](auto e) { return std::to_string(e).size(); })
        | rv::filter([](auto e) { return e % 2 == 0; })
        | hs::length();
}
