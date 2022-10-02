⍝ Problem Link: https://leetcode.com/contest/weekly-contest-313/problems/number-of-common-factors/

commonFactors ← ≢⍤∩⍥(∪⊢∨⍳) 
      
⍝ Tests
      
 6 commonFactors 12 ⍝ 4
25 commonFactors 30 ⍝ 2
