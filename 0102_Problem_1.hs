-- code_report Solution
-- Problem Link: https://leetcode.com/problems/sort-array-by-parity/

import Data.List (partition)

sortArrayByParity :: [Int] -> [Int]
sortArrayByParity = uncurry (++) 
                  . partition even
