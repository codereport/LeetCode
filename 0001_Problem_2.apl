⍝ code_report Solution
⍝ Problem Link: https://leetcode.com/problems/first-unique-character-in-a-string/

⍝ Solution 1 (Bad)
firstUniqChar ← {⊃⊃(1={⊃¯1↑⍵}¨b)/b←{⍵{⍺,+/⍵=⍺}a}¨∪a←⍵}

⍝ Solution 2 (Good)
firstUniqChar ← {⊃(1=+/t∘.=⍵)/t←∪⍵}

⍝ Solution 3 (Better) - Nov 30, 2020
firstUniqChar ← {⊃⍸1=+/∘.=⍨⍵}
