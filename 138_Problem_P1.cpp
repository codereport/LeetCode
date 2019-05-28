// code_report Solution
// Video Link: https://leetcode.com/contest/weekly-contest-138/problems/height-checker/
// Problem Link: https://youtu.be/i-KWz4ZHwFk

int heightChecker(vector<int>& h) {
    auto t = h;
    sort(t.begin(), t.end());
    return inner_product(h.begin(), h.end(), t.begin(), 0, 
        plus<>(), 
        not_equal_to<>());
}

// C++20 Solution (Ranges-v3)

namespace rv = ranges::view;
namespace ra = ranges::action;

namespace hs {
    template <typename P>
    auto count_if(P p) {
        return ranges::make_pipeable([&](auto&& rng) {
            return ranges::count_if(rng, p);
        });
    }
}

auto heightChecker(vector<int> v) -> int {
    auto t = v | ranges::copy | ra::sort;
    return rv::zip_with(minus{}, v, t)
         | hs::count_if([](auto e) { return e != 0; });
}
