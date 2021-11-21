⍝ Problem Link: https://leetcode.com/contest/weekly-contest-268/problems/two-furthest-houses-with-different-colors/

⍝ Solution 1
maxDistance ← {⌈/|∊(⍳∘≢-⊢)⍸¨↓∘.≠⍨⍵}

⍝ Solution 2
maxDistance ← ⌽⌈⍥((⊃∘⌽-⊃)⍸∘≠)⊢

⍝ Tests
maxDistance ¨(1 1 1 6 1 1 1)(1 8 3 8 3)(0 1) ⍝ 3 4 1
