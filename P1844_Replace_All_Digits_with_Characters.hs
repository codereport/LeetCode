--  Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

createChar      = (\l r -> if isAlpha l then (toEnum ((fromEnum l) + (toEnum r))) else r)
replaceDigits s = (head s) : (mapAdjacent createChar s)
