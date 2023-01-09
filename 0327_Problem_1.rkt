; Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
; LeetCode Benchmark: 339 ms

(define/contract (maximum-count nums)
  (-> (listof exact-integer?) exact-integer?)
    (max (count positive? nums)
         (count negative? nums)))
