-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-22/problems/k-diff-pairs-in-an-array/
-- Problem Link (Practice): https://leetcode.com/problems/k-diff-pairs-in-an-array/

import Data.List.Unique (sortUniq)
import Data.List.HT     (outerProduct)

findPairs :: [Int] -> Int
findPairs n = length 
            . filter (==n) 
            . concat 
            . (outerProduct (-) <*> id) 
            . sortUniq
