⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-22/problems/k-diff-pairs-in-an-array/
⍝ Problem Link (Practice): https://leetcode.com/problems/k-diff-pairs-in-an-array/

⍝ Probably TLE
findPairs ← {+/,⍺=∘.-⍨∪⍵}

⍝ Tacit / Point Free :) 
findPairs ← (+/,)⍤(⊣=∘.-⍨∘∪⍤⊢)
