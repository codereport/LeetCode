⍝ Problem Link: https://leetcode.com/contest/weekly-contest-294/problems/percentage-of-letter-in-string/

percentageLetter ← (⌊100×+/÷≢)⍤=
      
⍝ Tests
'o' percentageLetter 'foobar' ⍝ 33
'k' percentageLetter 'jjjj'   ⍝ 0
