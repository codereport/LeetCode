-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-156/problems/unique-number-of-occurrences/
-- Problem Link (Practice): https://leetcode.com/problems/unique-number-of-occurrences/

import Data.List

freq :: [Int] -> [Int]
freq = map length 
     . group 
     . sort

uniqueOccurrences :: [Int] -> Bool
uniqueOccurrences = (<=1) 
                  . maximum 
                  . freq
                  . freq
