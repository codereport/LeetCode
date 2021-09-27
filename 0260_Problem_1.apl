⍝ Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

maximumDifference ← {⌈/-∊(⍳∘≢↓¨⊢)↓∘.-⍨⍵}

⍝ Tacit (suboptimal IMO)
maximumDifference ← ⌈/-∘∊∘(⍳∘≢↓¨⊢)∘(↓∘.-⍨)
