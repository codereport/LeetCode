⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-175/problems/check-if-n-and-its-double-exist/
⍝ Problem Link (Practice): https://leetcode.com/problems/check-if-n-and-its-double-exist/

solve ← {(1<+/0=⍵)∨∨/,∘.{(⍵≠0)∧⍺=2×⍵}⍨⍵}
