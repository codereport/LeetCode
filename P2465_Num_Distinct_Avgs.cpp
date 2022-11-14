// Problem Link: https://leetcode.com/contest/biweekly-contest-91/problems/number-of-distinct-averages/
// Godbolt: https://godbolt.org/z/TYP3nn33P

auto distinct_averages(std::vector<int>& nums) {
    std::sort(nums.begin(), nums.end());
    std::unordered_set<int> sums;
    for (int i = 0; i < nums.size() - 1 - i; i++)
        sums.insert(nums[i] + nums[nums.size() - 1 - i]);
    return sums.size();
}
