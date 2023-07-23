-- Problem Link: https://leetcode.com/contest/weekly-contest-355/problems/split-strings-by-separator/

splitWordsBySeparator words sep = filter (/="") 
                                . concat 
                                . map (splitOn sep) 
                                $ words

-- Tests
splitWordsBySeparator ["one.two.three","four.five","six"] "." -- ["one","two","three","four","five","six"]
ghci> splitWordsBySeparator ["$easy$","$problem$"] "$"        -- ["easy","problem"]
splitWordsBySeparator ["|||"] "|"                             -- []
