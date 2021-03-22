⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-48/problems/second-largest-digit-in-a-string/

secondHighest←{
  d←∪(⍵∊⎕D)/⍵
  1≥≢d:¯1⋄(⍸2=⍒d)⊃d
}
