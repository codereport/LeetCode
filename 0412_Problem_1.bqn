# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/412-1.bqn

# Link: https://leetcode.com/problems/final-array-state-after-k-multiplication-operations-i

GetFinalState ← { 𝕊 ⟨nums, k, m⟩:
    (×⟜(1⌈m×(∊∧⌊´⊸=)))⍟k nums
}

# Tests
•Show GetFinalState ⟨⟨2,1,3,5,6⟩, 5, 2⟩ # [8,4,6,5,6]
•Show GetFinalState ⟨⟨1,2⟩,3,4⟩         # [16,8]
