// Problem Link: https://leetcode.com/problems/first-missing-positive/

// Solution 1 (parition, sort & mismatch)
// Godbolt Link: https://godbolt.org/z/ro4d5fb6h

auto find_missing_positive(thrust::device_vector<int> vec) -> int {
    auto i = thrust::partition(vec.begin(), vec.end(), 
        [n = vec.size()] __device__ (auto e) { return 0 < e and e <= n; });
    thrust::sort(vec.begin(), i);
    return *thrust::mismatch(vec.cbegin(), 
                             vec.cend(), 
                             thrust::make_counting_iterator(1)).second;
}

// Solution 2 (scatter_if & mismatch)
// Godbolt Link: https://godbolt.org/z/K7rz5h19z

auto find_missing_positive(thrust::device_vector<int> vec) -> int {
    auto s = thrust::device_vector<int>(vec.size() + 1, 0);
    thrust::scatter_if(vec.begin(), vec.end(), vec.begin(), vec.begin(), s.begin(), 
        [n = vec.size()] __device__ (auto e) { return 0 < e and e <= n; });
    return *thrust::mismatch(s.cbegin() + 1, 
                             s.cend(), 
                             thrust::make_counting_iterator(1)).second;
}
