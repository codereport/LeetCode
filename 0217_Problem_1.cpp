// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
// Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

// C++11 Solution (no algorithms)

int maximumWealth(vector<vector<int>>& accounts) {
    auto max = 0;
    for (auto const& row : accounts) {
        auto sum = 0;
        for (auto const& account : row)
            sum += account;
        max = std::max(max, sum);
    }
    return max;
}

// C++11 Solution

int maximumWealth(vector<vector<int>>& accounts) {
    return std::accumulate(
        accounts.cbegin(), 
        accounts.cend(),
        0, 
        [](auto acc, auto const& row) { 
            auto const sum = std::accumulate(row.cbegin(), row.cend(), 0);
            return std::max(acc, sum); 
        });
}


// C++17 Solution

int maximumWealth(vector<vector<int>>& accounts) {
    return std::transform_reduce(
        accounts.cbegin(), 
        accounts.cend(),
        0, 
        [](auto a, auto b) { return std::max(a, b); }, 
        [](auto const& row) { return std::reduce(row.cbegin(), row.cend()); });
}

// C++20 Solution (https://www.godbolt.org/z/cTWsEs)

auto maximumWealth(auto const& accounts) -> int {
    return std::ranges::max(accounts 
        | std::views::transform([](auto const& row) { 
            return std::reduce(row.cbegin(), row.cend());
        }));
}
