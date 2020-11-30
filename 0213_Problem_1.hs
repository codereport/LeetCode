-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-213/problems/check-array-formation-through-concatenation/
-- Problem Link (Practice): https://leetcode.com/problems/check-array-formation-through-concatenation/

canFormArray :: [Int] -> [[Int]] -> Bool
canFormArray arr = any (==True) 
                 . map ((==arr) . concat)
                 . permutations
