-- Problem Link: https://leetcode.com/problems/maximum-subarray/

-- Solution 1
maxSubArray = maximum . scanl1 (\a b -> max b (a + b))

-- Solution #2 (APL inspired)
kite            = flip const
bfork l b r x y = b (l x y) (r x y) -- bfork = Binary Fork from APL (no bird combinator for it)

maxSubArray = maximum . scanl1 (bfork kite max (+))
