⍝ https://leetcode.com/problems/check-if-the-sentence-is-pangram/

⍝ Solution 1
checkIfPangram ← ∧/(⎕C⎕A)∊⊢

⍝ Solution 2 (if APL had ⎕a == ⎕C⎕A)
checkIfPangram ← ∧/⎕a∊⊢
