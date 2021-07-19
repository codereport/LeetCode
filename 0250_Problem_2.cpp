// Problem Link: https://leetcode.com/problems/add-minimum-number-of-rungs
// Godbolt: https://godbolt.org/z/8snsEGzfb

int addRungs(std::vector<int> rungs, int dist) {
    auto diffs = rungs;
    std::adjacent_difference(rungs.begin(), rungs.end(), diffs.begin());
    return std::accumulate(diffs.begin(), diffs.end(), 0,
        [dist](auto rungsNeeded, auto diff) {
            return rungsNeeded + (diff - 1) / dist;
        });
}
