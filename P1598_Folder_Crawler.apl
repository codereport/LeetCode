⍝ Problem Link: https://leetcode.com/problems/crawler-log-folder/

⍝ Solution 1 (fails)
minOperations ← 0⌈(≢-(2×(+/('.'=⊃)¨)))∘(('./'∘≢¨)⊢⍤/⊢)

⍝ Solution 2 (fails)
minOperations ← 0⌈(≢-(+/1 2×(+/'./' '../'∘.≡⊢)))

⊃⌽(0⌈+)\(~-⊢)('.'=⊃)¨(('./'∘≢¨)⊢⍤/⊢)
