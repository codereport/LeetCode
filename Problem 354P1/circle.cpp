// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/
// Compiler Explorer: https://godbolt.org/z/3Mz3xYKq6

auto sum_of_squares(std::vector<int> nums) -> int32_t {
    return iota(1)
        |> zip($, nums)
        |> filter($, _b(_eq(0), _b(_mod(nums.size()), _fst)))
        |> transform($, _b(_w(_mul_), _snd)) 
        |> ranges::fold_left($, 0, std::plus{});
}

// Tests
auto main() -> int {
    fmt::println("{}", sum_of_squares(std::vector{1, 2, 3, 4})); // 21
    fmt::println("{}", sum_of_squares(std::vector{2, 7, 1, 19, 18, 3})); // 63
}
