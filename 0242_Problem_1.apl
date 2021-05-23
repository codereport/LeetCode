⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-242/problems/longer-contiguous-segments-of-ones-than-zeros/
⍝ Problem Link (Practice): https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/

checkZeroOnes ← {
   f ← {⌈/+/↑⊆⍨⍵}
   f>f∘~
}
