⍝ Problem Link: https://leetcode.com/problems/longest-common-prefix/

⍝ Solution 1 (uses take + fork)
longestCommonPrefix ← {+/∧\(∧/⊃=⊢)⍤1⍉↑⍵}↑⊃

⍝ Solution 2 (uses compress)
longestCommonPrefix ← {(⊃⍵)/⍨∧\(∧/⊃=⊢)⍤1⍉↑⍵}

⍝ Solution 1 (uses take + fork + ↓⍉↑)
longestCommonPrefix ← {+/∧\(⊃∧.=⊢)¨↓⍉↑⍵}↑⊃
