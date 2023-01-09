% Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
% LeetCode Benchmark: 229 ms

maximum_count(Nums) ->
    max(length(lists:filter(fun(X) -> X > 0 end, Nums)),
        length(lists:filter(fun(X) -> X < 0 end, Nums))).
