⍝ code_report Solution
⍝ Problem Link (Contest): https://leetcode.com/contest/weekly-contest-180/problems/lucky-numbers-in-a-matrix/
⍝ Problem Link (Contest): https://leetcode.com/problems/lucky-numbers-in-a-matrix/

a ← (⍪⌊/m) (=⍤1) m ⍝ row mins
b ← (⌈⌿m) (=⍤1) m ⍝ col maxs
c ← ∪(,a ∧ b)/,m ⍝ ans
