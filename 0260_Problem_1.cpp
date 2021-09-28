// Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/
// Godbolt Link: https://godbolt.org/z/3ze4WhEMG

auto maximum_difference(std::vector<int> nums) -> int {
    int result     = -1;
    int min_so_far = std::numeric_limits<int>::max();
    for (auto elem : nums) {
        min_so_far = std::min(min_so_far, elem);
        if (elem > min_so_far) {
            result = std::max(result, elem - min_so_far);
        }
    }
    return result;
}
