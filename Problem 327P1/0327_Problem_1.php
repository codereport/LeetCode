<?php
// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 39 ms

function maximumCount($nums) {
    $pos = 0;
    $neg = 0;
    foreach ($nums as $e) {
        if ($e > 0) {
            $pos++;
        } else if ($e < 0) {
            $neg++;
        }
    }
    return max($pos, $neg);
}
