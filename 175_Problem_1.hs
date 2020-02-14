-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
-- Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

import Data.List.HT (outerProduct)

zeroCount :: [Int] -> Int
zeroCount = length
          . filter (==0)

doublePair :: [Int] -> Bool
doublePair xs = any (==True) 
              $ concat 
              $ outerProduct (\a b -> a == (2*b) && a /= 0) xs xs

solve :: [Int] -> Bool
solve xs = doublePair xs || 1 < zeroCount xs
