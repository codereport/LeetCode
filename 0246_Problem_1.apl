⍝ Problem Link: https://leetcode.com/contest/weekly-contest-246/problems/largest-odd-number-in-string/

largestOddNumber ← {⌽({∨\'13579'∊⍨⍵}⊢⍤/⊢)⌽⍵}
