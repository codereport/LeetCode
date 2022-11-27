-- Problem Link: https://leetcode.com/problems/find-the-pivot-integer

phi a b c d = a (b d) (c d)
headOr x xs = if null xs then x else head xs
indices     = map fst . filter snd . zip [1..]

pivotInteger n = headOr (-1) 
               . indices
               . phi (zipWith (==)) (scanl1 (+)) (scanr1 (+)) 
               $ [1..n]

-- Tests
map pivotInteger [8, 1, 4] -- [6, 1, -1]
