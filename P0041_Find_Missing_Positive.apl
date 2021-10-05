⍝ Problem Link: https://leetcode.com/problems/first-missing-positive/

⍝ First Solution
findMissingNumber ← ⊃∘(⍸⍳∘≢≠⊢)∘((1+≢)↑(⊂⍤⍋⌷⊢)∘(0∘<⊢⍤/⊢))

⍝ Second Solution
findMissingNumber ← ⊃∘⍸∘(~(⍳1+≢)∊⊢)

⍝ LeetCode Tests
findMissingNumber ¨ (1 2 0)(3 4 ¯1 1)(7 8 9 11 12)
