⍝ Problem Link: https://leetcode.com/contest/weekly-contest-289/problems/calculate-digit-sum-of-a-string/

⍝ Original
digitSum ← {⍺≥≢⍵: ⍵ ⋄ ⍺ digitSum ⊃,/⍕¨{+/10∘(⊥⍣¯1)⍎⍵}¨⍵⊂⍨1=⍺|⍳≢⍵}

⍝ Improve by using ∇
digitSum ← {⍺≥≢⍵: ⍵ ⋄ ⍺ ∇ ⊃,/⍕¨{+/10∘(⊥⍣¯1)⍎⍵}¨⍵⊂⍨1=⍺|⍳≢⍵}

⍝ Improve by using ⍎¨
digitSum ← {⍺≥≢⍵: ⍵ ⋄ ⍺∇⊃,/⍕¨{+/⍎¨⍵}¨⍵⊂⍨1=⍺|⍳≢⍵}

⍝ Improve by using ∊ and removing dfn
digitSum ← {⍺≥≢⍵: ⍵ ⋄ ⍺∇∊⍕¨(+/⍎¨)¨⍵⊂⍨1=⍺|⍳≢⍵}

⍝ Tests
3 digitSum '11111222223' ⍝ 135
3 digitSum '00000000'    ⍝ 000
