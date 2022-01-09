⍝ Problem Link: https://leetcode.com/contest/weekly-contest-275/problems/check-if-every-row-and-column-contains-all-numbers/
checkValid ← ≢∧.=(⍉,⍥(≢∘∪⍤1)⊢)

⍝ Tests
a ← 3 3⍴1 2 3 3 1 2 2 3 1
b ← 3 3⍴1 1 1 1 2 3 1 2 3
checkValid ¨ a b ⍝ 1 0
