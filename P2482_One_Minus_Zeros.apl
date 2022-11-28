⍝ Problem Link: https://leetcode.com/problems/difference-between-ones-and-zeros-in-row-and-column

OneMinusZeros ← ⊢-⍥(+/∘.++⌿)~
      
⍝ Tests
      OneMinusZeros 3 3⍴0 1 1 1 0 1 0 0 1
 0  0 4
 0  0 4
¯2 ¯2 2
      
      OneMinusZeros 2 3⍴1
5 5 5
5 5 5
