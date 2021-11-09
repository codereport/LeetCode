⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
⍝ Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

⍝ Original Solution
maxDepth ← {⌈/+\(⊣-~)'('=(⍵∊'()')/⍵}

⍝ Improved Solution
maxDepth ← {⌈/+\-⌿'()'∘.=⍵}
