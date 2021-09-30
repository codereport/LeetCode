⍝ code_report Solution
⍝ Problem Link (Practice): https://leetcode.com/problems/number-of-good-pairs/

num_identical_pairs ← {+/,(∘.=⍨⍵)×∘.<⍨⍳≢⍵}
