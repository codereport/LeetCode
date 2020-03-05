-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-15/problems/max-consecutive-ones/
-- Problem Link (Practice): https://leetcode.com/problems/max-consecutive-ones/

-- Solution 1
maxConsecutiveOnes :: [Int] -> Int
maxConsecutiveOnes = maximum 
                   . (0:)
                   . map length
                   . filter ((1==) . head)
                   . group 
                   
-- Solution 2
maxConsecutiveOnes :: [Int] -> Int
maxConsecutiveOnes = maximum 
                   . map sum
                   . group                    
