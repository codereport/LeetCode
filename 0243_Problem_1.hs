-- Contest Link: https://leetcode.com/contest/weekly-contest-245/problems/redistribute-characters-to-make-all-strings-equal/

import Data.List.Unique (count)

makeEqual s = all (==0) 
            . map (\x -> mod x (length s)) 
            . map snd 
            . count 
            $ concat s
