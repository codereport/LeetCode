-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
-- Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

-- Note this problem is very similar to MCO (Max Consecutive Ones)

import Data.List (groupBy)
import Data.Function (on)

threeConsecutiveOdds :: [Int] -> Bool
threeConsecutiveOdds = (3<=) 
                     . maximum 
                     . map length 
                     . filter (odd . head)   -- (.) is the B (Bluebird) combinator
                     . groupBy (on (==) odd) -- on  is the P (Psi)      combinator
