⍝ Problem Link: https://leetcode.com/poblems/difference-between-element-sum-and-digit-sum-of-an-array/

DifferenceOfSums ← ⊢|-⍥(+/)(∊(⍎¨⍕)¨)
      
⍝ Tests
DifferenceOfSums 1 15 6 3 ⍝ 9
DifferenceOfSums 1 2 3 4  ⍝ 0
