// Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

// Solution #1

string replaceDigits(string s) {
    auto t = s;
    for (int i = 1; i < s.size(); i += 2)
        t[i] = t[i-1] + (t[i] - '0');
    return t;
}

// Solution #2

string replaceDigits(string s) {
    auto t = s;
    std::partial_sum(s.cbegin(), s.cend(), t.begin(), 
        [](auto p, auto c) { return isalpha(c) ? c : p + (c - '0'); });
    return t;
}

// Solution #3 (this one is the best)

string replaceDigits(string s) {
    auto t = s;
    std::adjacent_difference(s.cbegin(), s.cend(), t.begin(), 
        [](auto c, auto p) { return isalpha(c) ? c : p + (c - '0'); });
    return t;
}
