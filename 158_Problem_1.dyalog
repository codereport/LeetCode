⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-158/problems/split-a-string-in-balanced-strings/
⍝ Problem Link (Practice): https://leetcode.com/problems/split-a-string-in-balanced-strings/

balancedStringSplit ← {+/0=+\('R'=⍵)-'L'=⍵}
