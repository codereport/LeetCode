⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-239/problems/minimum-distance-to-the-target-element/
⍝ Problem Link (Practice): https://leetcode.com/problems/minimum-distance-to-the-target-element/

getMinDistance ← {⌊/|(⊃⍺)-⍸(⊃⌽⍺)=⍵}
