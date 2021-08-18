⍝ Problem Link: https://leetcode.com/problems/happy-number/

isHappy ← 1=(+/2*⍨10(⊥⍣¯1)⊢)⍣1000
