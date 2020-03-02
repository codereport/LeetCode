-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-178/problems/how-many-numbers-are-smaller-than-the-current-number/
-- Problem Link (Practice): https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

import Data.List.HT (outerProduct)

smallerNumbersThanCurrent :: [Int] -> [Int]
smallerNumbersThanCurrent x = map (length . filter (==True)) 
                            $ outerProduct (>) x x
