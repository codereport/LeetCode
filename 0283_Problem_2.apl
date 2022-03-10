⍝ Problem Link: https://leetcode.com/contest/weekly-contest-283/problems/append-k-integers-with-minimal-sum/

⍝ Solution 1
minimalKSum ← {+/⍺↑⍵~⍨⍳⍺+≢⍵}

⍝ Solution 2 (tacit)
minimalKSum ← +/⍳⍤+∘≢~⊢

⍝ Tests
2 minimalKSum 1 4 25 10 15 ⍝ 5
6 minimalKSum 5 6          ⍝ 25
