-- code_report Solution
-- Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-211/problems/largest-substring-between-two-equal-characters/
-- Problem Link (Practice): https://leetcode.com/problems/largest-substring-between-two-equal-characters/

import Data.List (subsequences)

maxLengthBetweenEqualCharacters :: String -> Int
maxLengthBetweenEqualCharacters = maximum 
                                . map ((-1+) . length) 
                                . filter (\c -> (head c) == (last c)) 
                                . tail 
                                . subsequences

-- Alternatively 

import Data.Aviary.Birds (starling')

s = starling'

maxLengthBetweenEqualCharacters :: String -> Int
maxLengthBetweenEqualCharacters = maximum 
                                . map ((-1+) . length) 
                                . filter (s (==) head last) 
                                . tail 
                                . subsequences
