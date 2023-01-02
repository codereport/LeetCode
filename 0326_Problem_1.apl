⍝ Problem Link: https://leetcode.com/contest/weekly-contest-326/problems/count-the-digits-that-divide-a-number/

countDigits ← {+/~⍵|⍨⍎¨⍕⍵}

⍝ Tests
countDigits ¨ 7 121 1248 ⍝ 1 2 4
