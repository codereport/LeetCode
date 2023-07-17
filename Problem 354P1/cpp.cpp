// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

auto sum_of_squares(auto&& nums) -> int32_t {
    auto const n = static_cast<int32_t>(nums.size());
    return ranges::fold_left(
        std::views::zip(std::views::iota(1, n + 1), nums)
        | std::views::filter([n](auto t) { return n % std::get<0>(t) == 0; })
        | std::views::transform([](auto t) { return std::get<1>(t) * std::get<1>(t); }), 
        0, std::plus{});
        
}

// Tests
auto main() -> int {
    fmt::println("{}", sum_of_squares(std::vector{1, 2, 3, 4})); // 21
    fmt::println("{}", sum_of_squares(std::vector{2, 7, 1, 19, 18, 3})); // 63
}
