⍝ Problem Link: https://leetcode.com/contest/weekly-contest-263/problems/check-if-numbers-are-ascending-in-a-sentence/
areNumbersAscending ← {∧/2</⍎¨(⊢⊢⍤/⍨(∧/∊∘⎕D)¨)' '∘(≠⊆⊢)⍵}

⍝ Tests
↑tests
⍝ 1 box has 3 blue 4 red 6 green and 12 yellow marbles              
⍝ hello world 5 x 5                                                 
⍝ sunset is at 7 51 pm overnight lows will be in the low 50 and 60 s
⍝ 4 5 11 26

areNumbersAscending ¨ tests ⍝ 1 0 0 1
