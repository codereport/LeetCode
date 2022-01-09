⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-69/problems/capitalize-the-title/

capitalizeTitle ← {
     w ← ' '(≠⊆⊢)⎕C⍵              ⍝ words
     l ← ≢¨w                      ⍝ lengths
     c ← ⎕UCS¨(l↑¨¯32×2<l)+⎕UCS¨w ⍝ capitalized
     ⊃{⍺,' ',⍵}/c
 }

⍝ Tests
capitalizeTitle 'capiTalIze tHe titLe'      ⍝ Capitalize The Title
capitalizeTitle 'First leTTeR of EACH Word' ⍝ First Letter of Each Word
capitalizeTitle 'i lOve leetcode'           ⍝ i Love Leetcode
