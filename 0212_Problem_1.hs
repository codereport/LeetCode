-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-212/problems/slowest-key/
-- Problem Link (Practice): https://leetcode.com/problems/slowest-key/

slowestKey :: String -> [Int] -> Char
slowestKey k = snd 
             . maximum 
             . (flip zip) k 
             . mapAdjacent (flip (-)) 
             . (0:)
