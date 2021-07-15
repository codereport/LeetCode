-- Problem Link: https://leetcode.com/contest/weekly-contest-249/problems/unique-length-3-palindromic-subsequences/

-- Solution 1

import Data.List (subsequences)
import Data.List.Unique (sortUniq)
import Control.Monad (ap)

countPalindromicSubsequence 
    = length 
    . filter (==True) 
    . map (ap (==) reverse) 
    . sortUniq 
    . filter ((==3) . length) 
    . subsequences
    
-- Solution 2 (cleaned up)

import Data.List (subsequences)
import Data.List.Unique (sortUniq)
import Control.Monad (ap)

countPalindromicSubsequence 
    = length 
    . sortUniq 
    . filter (ap (==) reverse) 
    . filter ((==3) . length) 
    . subsequences
