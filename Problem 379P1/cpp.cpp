// Problem Link: https://leetcode.com/problems/maximum-area-of-longest-diagonal-rectangle/description/

// A solution
// Godbolt: https://godbolt.org/z/fMzbcdGE6
int areaOfMaxDiagonal(std::vector<std::vector<int>> dimensions)
{
    auto op = [](auto v)
    { return std::tuple{v[0] * v[0] + v[1] * v[1], v[0] * v[1]}; };
    return std::get<1>(std::ranges::max(dimensions | std::views::transform(op)));
}