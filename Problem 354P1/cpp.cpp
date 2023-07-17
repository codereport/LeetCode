// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

// compiler explorer: https://godbolt.org/z/PM3WqWsr4
auto sum_of_squares(auto nums) -> int {
    int const n = nums.size();
    auto res = 0;
    for (int i = 0; i < n; ++i) {
        if (n % (i + 1) == 0) {
            res += nums[i] * nums[i];
        }
    }
    return res;
}

// compiler explorer: https://godbolt.org/z/Ys4jGabd8
auto sum_of_squares(std::vector<int> nums) -> int32_t {
    return ranges::fold_left(
        std::views::zip(std::views::iota(1), nums)
        | std::views::filter([&](auto t) { return nums.size() % std::get<0>(t) == 0; })
        | std::views::transform([](auto t) { return std::get<1>(t) * std::get<1>(t); }), 
        0, std::plus{}) ;
}

// Tests
auto main() -> int {
    fmt::println("{}", sum_of_squares(std::vector{1, 2, 3, 4})); // 21
    fmt::println("{}", sum_of_squares(std::vector{2, 7, 1, 19, 18, 3})); // 63
}
