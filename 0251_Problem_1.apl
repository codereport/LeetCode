⍝ Problem Link: https://leetcode.com/contest/weekly-contest-251/problems/sum-of-digits-of-string-after-convert/

getLucky ← {{+/∊10⊥⍣¯1¨⍵}⍣⍺⊢⍵⍳⍨⎕C⎕A}
