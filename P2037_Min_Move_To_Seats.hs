-- Problem Link: https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

import Data.List (sort)
import Data.Function (on)
import Data.Composition (.:)

minMoveToSeats = sum . map abs .: zipWith (-) `on` sort

-- Tests
minMoveToSeats [3,1,5] [2,7,4]     -- 4
minMoveToSeats [4,1,5,9] [1,3,2,6] -- 7
minMoveToSeats [2,2,6,6] [1,3,2,6] -- 4
