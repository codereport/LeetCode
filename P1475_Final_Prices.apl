⍝ Problem Link: https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

⍝ TODO

{⍵-(⊃0~⍨⊢)¨≥◥⍨⍵}
(⊃0~⍨⊢)¨∘{≥◥⍨⍵}-⍨⊢
(⊃0~⍨⊢)¨∘≥◥⍨-⍨⊢
⊢-(⊃0~⍨⊢)¨∘≥◥⍨
