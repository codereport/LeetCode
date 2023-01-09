-- Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/

-- Solution 1
maximumCount xs = on max length pos neg
    where pos = filter (>0) xs
          neg = filter (<0) xs

-- Solution 2 (point free)
maximumCount = (on max length . filter (<0)) <*> filter (>0)
