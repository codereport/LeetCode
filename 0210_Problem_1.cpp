// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
// Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

// Godbolt Link: https://www.godbolt.org/z/oE3Y97

auto max_depth(std::string s) -> int {
    return s 
        | rv::filter([](auto c) { return c == '(' || c == ')'; })
        | rv::transform([](auto c) { return c == '(' ? 1 : -1; })
        | rv::partial_sum
        | hs::maximum();
}
