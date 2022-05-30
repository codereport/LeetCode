⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-79/problems/check-if-number-has-equal-digit-count-and-digit-value/

digitCount ← {{⍵≡+⌿⍵∘.=¯1+⍳≢⍵}⍎¨⍵}
      
⍝ Tests
digitCount '1210' ⍝ 1
digitCount '030'  ⍝ 0
