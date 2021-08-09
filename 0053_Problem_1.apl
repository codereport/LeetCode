⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-53/problems/binary-number-with-alternating-bits/
⍝ Problem Link (Practice): https://leetcode.com/problems/binary-number-with-alternating-bits/

hasAlternatingBits ← {∧/2≠/2(⊥⍣¯1)⍵}
