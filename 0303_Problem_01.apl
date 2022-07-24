⍝ Problem Link: https://leetcode.com/contest/weekly-contest-303/problems/first-letter-to-appear-twice/

RepeatedCharacter ← {⊃(∪⍵)/⍨2=+/(∪∘.=⊢)⍵}
      
⍝ Tests
RepeatedCharacter 'abcdd'     ⍝ d
RepeatedCharacter 'abccbaacz' ⍝ b
