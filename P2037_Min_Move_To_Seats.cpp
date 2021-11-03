// Problem Link: https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

// Solution 1 (loops)
// Godbolt: https://godbolt.org/z/bnKGo8dnW

auto min_moves_to_seat(std::vector<int> a, std::vector<int> b) -> int {
    std::ranges::sort(a);
    std::ranges::sort(b);
    int res = 0;
    for (int i = 0; i < a.size(); i++) 
        res += std::abs(a[i] - b[i]);
    return res;
}

// Solution 2 (algorithms)
// Godbolt: https://godbolt.org/z/nEPq6nMz3

auto min_moves_to_seat(std::vector<int> a, std::vector<int> b) -> int {
    std::ranges::sort(a);
    std::ranges::sort(b);
    return std::transform_reduce(
        std::cbegin(a), 
        std::cend(a), 
        std::cbegin(b), 0,
        std::plus{}, 
        [](auto x, auto y) { return std::abs(x - y); });
}
