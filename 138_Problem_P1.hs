-- code_report Solution
-- Video Link: https://leetcode.com/contest/weekly-contest-138/problems/height-checker/
-- Problem Link: https://youtu.be/i-KWz4ZHwFk

import Data.List (sort)

solve :: [Int] -> Int
solve xs = length 
         $ filter (/=0) 
         $ zipWith (-) xs (sort xs)
