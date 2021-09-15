-- https://leetcode.com/contest/weekly-contest-258/problems/reverse-prefix-of-word/

-- Solution 1
-- Fails for 'z' reversePrefix "abcd" test case
import Control.Applicative (liftA2)
import Data.List.HT (segmentAfter)

reversePrefix c = liftA2 (++) (reverse . head) (concat . tail) . segmentAfter (==c)

-- Solution 2
-- Also fails for 'z' reversePrefix "abcd" test case
import Data.Aviary.Birds (dovekie, starling, cardinal)
import Data.Maybe (fromJust)
import Data.List (elemIndex)

dovekie' a b d c e = dovekie a b c d e
reversePrefix c = uncurry (dovekie' (++) reverse id) 
                . starling (cardinal splitAt) ((1+) . fromJust . (elemIndex c))
