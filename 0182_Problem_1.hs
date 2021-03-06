-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-182/problems/find-lucky-integer-in-an-array/
-- Problem Link (Practice): https://leetcode.com/problems/find-lucky-integer-in-an-array/

import Data.List.Unique (count)

findLucky :: [Int] -> Int
findLucky = foldl max (-1)
          . map fst 
          . filter (uncurry (==)) 
          . count
