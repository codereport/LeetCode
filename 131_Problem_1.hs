-- code_report Solution
-- Video Link: https://youtu.be/ekdNNn3vOqQ
-- Problem Link: https://leetcode.com/contest/weekly-contest-131/problems/remove-outermost-parentheses/

removeOuterParentheses :: String -> String
removeOuterParentheses s = concat $ map (tail . init) primitives
    where primitives = map (map fst) $ init $ segmentAfter ((==0) . snd) (zip s (parenCount s))
          parenCount = scanl1 (+) . map (\e -> if e == '(' then 1 else -1)
