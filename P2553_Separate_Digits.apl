⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-97/problems/separate-the-digits-in-an-array/

SeparateDigits ← ∊(⍎¨⍕)¨

⍝ Tests
SeparateDigits 13 25 83 77 ⍝ 1 3 2 5 8 3 7 7
SeparateDigits 7 1 3 9     ⍝ 7 1 3 9
