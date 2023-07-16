⍝ Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

SumOfSquares ← {+/×⍨⍵×0=(⍳|⊢)≢⍵} ⍝ Explicit
SumOfSquares ← +/2*⍨⊢×0=(⍳|⊢)∘≢  ⍝ Tacit

⍝ Tests
SumOfSquares 1 2 3 4       ⍝ 21
SumOfSquares 2 7 1 19 18 3 ⍝ 63
