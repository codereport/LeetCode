⍝ code_report Solution
⍝ Problem Link (Contest): https://leetcode.com/contest/weekly-contest-180/problems/lucky-numbers-in-a-matrix/
⍝ Problem Link (Contest): https://leetcode.com/problems/lucky-numbers-in-a-matrix/

⍝ Solution 1
luckyNumbers ← {(⌊/⍵)∩⌈⌿⍵}

⍝ Solution 1 (point free)
luckyNumbers ← ⌊/∩⌈⌿

⍝ Solution 2 (Bad)
a ← (⍪⌊/m) (=⍤1) m ⍝ row mins
b ← (⌈⌿m) (=⍤1) m ⍝ col maxs
c ← ∪(,a ∧ b)/,m ⍝ ans
