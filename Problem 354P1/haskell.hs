-- Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

import Data.Composition (.:)

divides = (max 0) . (1-) .: mod
-- divides = fromEnum . (==0) .: mod

sumOfSquares xs = sum . map (^2) $ zipWith (*) ys xs
    where n  = length xs
          ys = zipWith divides (repeat n) [1..n+1]
