-- https://leetcode.com/contest/weekly-contest-258/problems/reverse-prefix-of-word/

import Control.Applicative (liftA2)
import Data.List.HT (segmentAfter)

-- Fails for 'z' reversePrefix "abcd" test case
reversePrefix c = liftA2 (++) (reverse . head) (concat . tail) . segmentAfter (==c)
