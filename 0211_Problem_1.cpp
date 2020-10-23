// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-211/problems/largest-substring-between-two-equal-characters/
// Problem Link (Practice): https://leetcode.com/problems/largest-substring-between-two-equal-characters/

// Godbolt: https://www.godbolt.org/z/G11oac

#include <algorithm>
#include <vector>
#include <numeric>
#include <fmt/core.h>

class ascii_index_map {
    std::vector<std::vector<int>> char_indices;
public:
    ascii_index_map(std::string const& s) :
        char_indices(128)
    {
        std::for_each(s.cbegin(), s.cend(), 
            [&, i = 0](auto c) mutable { 
                char_indices[c - '\0'].push_back(i++); });
    }

    auto cbegin() const { return char_indices.cbegin(); }
    auto cend()   const { return char_indices.cend();   }
};

int maxLengthBetweenEqualCharacters(std::string s) {
    auto const map = ascii_index_map(s);
    return std::transform_reduce(
        map.cbegin(), 
        map.cend(),
        -1, 
        [](auto a, auto b)  { return std::max(a, b); },
        [](auto const& vec) { return vec.empty() ? -1 : vec.back() - vec.front(); });
}
