// Problem Link: https://leetcode.com/problems/first-missing-positive/
// Godbolt Link: https://godbolt.org/z/ro4d5fb6h

auto find_missing_positive(thrust::device_vector<int> vec) -> int {
    auto i = thrust::partition(vec.begin(), vec.end(), 
        [n = vec.size()] __device__ (auto e) { return 0 < e and e <= n; });
    thrust::sort(vec.begin(), i);
    return *thrust::mismatch(vec.cbegin(), 
                             vec.cend(), 
                             thrust::make_counting_iterator(1)).second;
}
