⍝ Problem Link: https://leetcode.com/contest/weekly-contest-298/problems/greatest-english-letter-in-upper-and-lower-case/

greatestLetter ← {⊃⌽⎕UCS 64+⍸×∧⌿+⌿⍵∘.=(⎕C,[0.5]⊢)⎕A}

⍝ Tests
greatestLetter 'lEeTcOdE'    ⍝ E
greatestLetter 'arRAzFif'    ⍝ R
greatestLetter 'AbCdEfGhIjK' ⍝ 
