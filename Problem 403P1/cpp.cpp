auto minimumAverage(std::vector<int> &nums) -> double {
    std::ranges::sort(nums);
    return std::transform_reduce(
               nums.begin(),
               nums.begin() + nums.size() / 2,
               nums.rbegin(),
               std::numeric_limits<int>::max(),
               std::ranges::min,
               std::plus{}) / 2.0;
}
