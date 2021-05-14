⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

replaceDigits ← ⊃,2{⍺∊⎕C⎕A:⎕UCS(⍎⍵)+⎕UCS⍺⋄⍵}/⊢
