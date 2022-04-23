⍝ Problem Link: https://leetcode.com/contest/weekly-contest-289/problems/calculate-digit-sum-of-a-string/

digitSum ← {⍺≥≢⍵: ⍵ ⋄ ⍺ digitSum ⊃,/⍕¨{+/10∘(⊥⍣¯1)⍎⍵}¨⍵⊂⍨1=⍺|⍳≢⍵}

⍝ Tests
3 digitSum '11111222223' ⍝ 135
3 digitSum '00000000'    ⍝ 000
