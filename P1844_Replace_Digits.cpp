// Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

// Solution #1
// https://www.godbolt.org/z/frh3c4YY5

auto replace_digits(std::string s) -> std::string {
    for (std::size_t i = 1; i < s.size(); i += 2)
        s[i] = s[i-1] + (s[i] - '0');
    return s;
}

// Solution #2
// https://www.godbolt.org/z/vz9rn8adG

auto replace_digits(std::string s) -> std::string {
    std::partial_sum(s.cbegin(), s.cend(), s.begin(), 
        [](auto p, auto c) { return isalpha(c) ? c : p + (c - '0'); });
    return s;
}

// Solution #3 (this one is the best)
// https://www.godbolt.org/z/z9354MffE

auto replace_digits(std::string s) -> std::string {
    std::adjacent_difference(s.cbegin(), s.cend(), s.begin(), 
        [](auto c, auto p) { return isalpha(c) ? c : p + (c - '0'); });
    return s;
}
