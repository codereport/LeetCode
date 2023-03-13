-- Problem Link: https://leetcode.com/contest/weekly-contest-336/problems/rearrange-array-to-maximize-prefix-score/

import Data.List (sort)

maxScore = length 
         . filter (>0) 
         . scanr1 (+) 
         . sort

-- Tests
maxScore [2,-1,0,1,-3,3,-3] -- 6
maxScore [-2,-3,0]          -- 0
