⍝ Problem Link: https://leetcode.com/problems/add-minimum-number-of-rungs

addRungs ← {+/⌊⍺÷⍨1-⍨2-⍨/0,⍵}
