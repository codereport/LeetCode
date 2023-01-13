import Data.Function ( on )
import Data.List ( partition )

-- Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/

-- Solution 1
maximumCount1 :: (Ord a, Num a) => [a] -> Int
maximumCount1 xs = on max length pos neg
    where pos = filter (>0) xs
          neg = filter (<0) xs

-- Solution 2 (point free)
maximumCount2 :: [Integer] -> Int
maximumCount2 = (on max length . filter (<0)) <*> filter (>0)

-- Solution 3 (by Lorin Lange)
maximumCount3 :: (Ord a, Num a) => [a] -> Int
maximumCount3 xs = on max length pos neg
    where (pos, neg) = foldr select ([],[]) xs
          select x (ts,fs) | x > 0     = (x:ts,fs)
                           | x < 0     = (ts, x:fs)
                           | otherwise = (ts,fs)

-- Solution 4 (by Lorin Lange)
maximumCount4 :: (Ord a, Num a) => [a] -> Int
maximumCount4 xs = uncurry max $ foldr select (0,0) xs
    where select x (pos, neg) | x > 0     = (pos + 1, neg)
                              | x < 0     = (pos, neg + 1)
                              | otherwise = (pos, neg)
