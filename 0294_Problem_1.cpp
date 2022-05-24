// Problem Link: https://leetcode.com/contest/weekly-contest-294/problems/percentage-of-letter-in-string/

auto percentage_letters(std::string s, char c) -> int {
    auto const n = std::ranges::count_if(s, [c](auto e) { return e == c; });
    return static_cast<int>(100 * (n * 1.0 / s.size()));
}

// Tests
std::cout << percentage_letters("foobar", 'o') << '\n'; // 33
std::cout << percentage_letters("jjjj", 'k') << '\n';   // 0
