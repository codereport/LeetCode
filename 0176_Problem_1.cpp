// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Godbolt Link:            https://godbolt.org/z/sx6b9K
// Video Link:              https://youtu.be/pDbDtGn1PXk

#include <vector>
#include <range/v3/view/filter.hpp>
#include <range/v3/view/join.hpp>

namespace rv = ranges::views;

namespace hs {
    auto length() {
        return ranges::make_pipeable([](auto&& rng) {
            return std::distance(
                ranges::begin(rng), 
                ranges::end(rng));
        });
    }
}

auto countNegatives(std::vector<std::vector<int>> const& grid) -> int {    
    return grid 
        | rv::join
        | rv::filter([](auto e) { return e < 0; })
        | hs::length();
}
