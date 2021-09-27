⍝ Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

⍝ Original Solution
maximumDifference ← {⌈/-∊(⍳∘≢↓¨⊢)↓∘.-⍨⍵}

⍝ Tacit (suboptimal IMO)
maximumDifference ← ⌈/-∘∊∘(⍳∘≢↓¨⊢)∘(↓∘.-⍨)

⍝ Better (and Full) Solution
maximumDifference ← ⌈/¯1,0~⍨((⌽⌈\∘⌽)-⊢)

⍝ Best (and Full) Solution
maximumDifference ← ⌈/¯1,0~⍨(⊢-⌊\)
