⍝ Problem Link: https://leetcode.com/contest/weekly-contest-281/problems/count-integers-with-even-digit-sum/

countEven ← {+/{~2|+/10(⊥⍣¯1)⍵}¨⍳⍵}

⍝ Tests
countEven ¨ 4 30 ⍝ 2 14
