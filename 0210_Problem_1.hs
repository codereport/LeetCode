-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
-- Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

maxDepth :: String -> Int
maxDepth = maximum 
         . scanl1 (+) 
         . map (\ c -> if c == '(' then 1 else -1) 
         . filter ((flip elem) "()")

-- alternative solution with a forward pipe
maxDepthForwardPipe :: String -> Int
maxDepthForwardPipe x =
  let
    -- > = forward pipe operator
    --(>) x f = f x
    x > f = f x
  in
  x
  > filter ((flip elem) "()")
  > map (\ c -> if c == '(' then 1 else -1)
  > scanl1 (+)
  > maximum
