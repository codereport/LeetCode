⍝ Problem Link: https://leetcode.com/problems/contains-duplicate/

⍝ Solution 1 (unique + fork)
⍝ https://aplcart.info/?q=are%20all%20major%20cells%20distinct#
containsDuplicates ← ∪≢⊢

⍝ Solution 2 (unique mask + reduction)
containsDuplicates ← ∨/~∘≠
