-- Problem Link: https://leetcode.com/contest/weekly-contest-274/problems/number-of-laser-beams-in-a-bank/

import Data.List.HT (mapAdjacent)

numberOfBeams = sum 
              . mapAdjacent (*) 
              . filter (>0) 
              . map length 
              . map (filter (=='1'))
              
-- Tests
numberOfBeams ["011001","000000","010100","001000"] -- 8
numberOfBeams ["000", "111", "000"]                 -- 0
