⍝ Problem Link: https://leetcode.com/contest/weekly-contest-287/problems/minimum-number-of-operations-to-convert-time/

⍝ Original Solution
convertTime ← +/∘(60 4 3 5⊤+/)60 1×-⍨⍥(⍎¨1 1 0 1 1⊆⊢)

⍝ Small improvement
convertTime ← +/∘(60 4 3 5⊤+/)60 1×-⍨⍥(⍎¨':'∘≠⊆⊢)
      
⍝ Tests
'02:30' convertTime '04:35' ⍝ 3
'11:00' convertTime '11:01' ⍝ 1
'02:30' convertTime '04:15' ⍝ 4
