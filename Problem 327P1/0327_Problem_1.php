<?php

declare(strict_types=1);

// Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/
// LeetCode Benchmark: 39 ms

function maximumCount(array $nums): int {
    $pos = 0;
    $neg = 0;
    foreach ($nums as $e) {
        if ($e > 0) {
            $pos++;
        } elseif ($e < 0) {
            $neg++;
        }
    }
    return max($pos, $neg);
}
