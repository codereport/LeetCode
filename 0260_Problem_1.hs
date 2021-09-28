-- Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

-- Original
maximumDifference = foldl max (-1) 
                  . filter (/=0) 
                  . (zipWith (flip (-)) <*> scanr1 max)

-- Best
maximumDifference = foldl max (-1) 
                  . filter (>0) 
                  . (zipWith (-) <*> scanl1 min)
