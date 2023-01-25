⍝ Problem Link: https://leetcode.com/problems/alternating-digit-sum/

AlternateDigitSum ← {+/((≢⍕⍵)⍴1 ¯1)×⊃(⍎¨⍕)¨⍵}
 
⍝ Tests
AlternateDigitSum 521    ⍝ 4
AlternateDigitSum 111    ⍝ 1
AlternateDigitSum 886996 ⍝ 0
