// Problem Link: https://leetcode.com/problems/longest-valid-parentheses/

// Refactored Solution

#include <string>
#include <vector>
#include <algorithm>
#include <numeric>
#include <iostream>

#include <thrust/host_vector.h>
#include <thrust/device_vector.h>

auto solve(std::string const& problem) -> int 
{
    if (problem.empty()) return 0;
  
    auto const n       = problem.size();
    auto const op      = [](char c) { return c == '(' ? 1 : -1; }; 
    auto const it      = thrust::make_transform_iterator(problem.begin(), op);
    auto const mapping = thrust::device_vector<int>(it, it + n);
    auto const iota    = thrust::make_counting_iterator(0);
    auto const starts  = std::vector(iota, iota + n - 1);
  
    return std::accumulate(
        starts.cbegin(), starts.cend(), 0,
        [&mapping, iota, n](int max_so_far, int i) 
        {
            auto prefix = thrust::device_vector<int>(n - i);
            thrust::inclusive_scan(mapping.begin()+i, mapping.end(), prefix.begin());
            auto const indices = thrust::device_vector<int>(iota, iota + n - i);
  
            auto const max_for_prefix = std::transform_reduce(
                prefix.cbegin(), prefix.cend(), indices.cbegin(), 0, 
                thrust::maximum{},
                [] (auto p, auto i) { return p == 0 ? i : 0; });
  
            return std::max(max_so_far, max_for_prefix + 1);
        });
}

// Refactored Ideal Solution
// Note: thrust::make_scan_iterator and thrust::reduce_if do NOT exist

auto solve_ideal(std::string const& problem) -> int 
{
    if (problem.empty()) return 0;
  
    auto const n       = problem.size();
    auto const op      = [](char c) { return c == '(' ? 1 : -1; }; 
    auto const it      = thrust::make_transform_iterator(problem.begin(), op);
    auto const mapping = thrust::device_vector<int>(it, it + n);
    auto const iota    = thrust::make_counting_iterator(0);
    auto const starts  = std::vector(iota, iota + n - 1);
  
    return std::accumulate(
        starts.cbegin(), starts.cend(), 0,
        [&mapping, iota, n](int max_so_far, int i) 
        {
            auto const scan    = thrust::make_scan_iterator(mapping.begin() + i);
            auto const prefix  = thrust::device_vector<int>(scan, scan + n - i);
            auto const indices = thrust::device_vector<int>(iota, iota + n - i);
  
            auto const max_for_prefix = thrust::reduce_if(
                indices.cbegin(), indices.cend(), prefix.cbegin(), 0, 
                thrust::maximum{},       // reduction binary operation
                thrust::logical_not{});  // stencil unary predicate **
  
            return std::max(max_so_far, max_for_prefix + 1);
        });
}
