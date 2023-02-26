-- Problem Link: https://leetcode.com/contest/weekly-contest-334/problems/left-and-right-sum-differences/

import Data.Composition (.:)

phi a b c x = a (b x) (c x)

leftRightDifference 
   = phi (zipWith (abs .: (-))) 
         (init . scanl (+) 0) 
         (tail . scanr (+) 0)

-- Tests
leftRightDifference [10,4,8,3] -- [15,1,11,22]
leftRightDifference [1]        -- [0]
