⍝ Problem Link: https://leetcode.com/problems/power-of-two/

⍝ Solution 1
isPowerOfTwo ← 1=(+/2∘⊥⍣¯1)∧0∘<

⍝ Solution 2
isPowerOfTwo ← {⍵∊2*⍳32}
