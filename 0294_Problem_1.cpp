// Problem Link: https://leetcode.com/contest/weekly-contest-294/problems/percentage-of-letter-in-string/
// Godbolt: https://godbolt.org/z/hPfManYbn

auto percentage_letters(std::string s, char c) -> int {
    auto const n = std::ranges::count_if(s, [c](auto e) { return e == c; });
    return static_cast<int>(100 * (n * 1.0 / s.size()));
}

// Tests
percentage_letters("foobar", 'o'); // 33
percentage_letters("jjjj", 'k');   // 0
