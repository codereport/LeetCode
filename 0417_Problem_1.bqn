# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/417-1.bqn

# Link: https://leetcode.com/problems/find-the-k-th-character-in-string-game-i

KthCharacter ← {(𝕩-1)⊑∾⟜(1⊸+)⍟9 "a"}

# Tests
•Show KthCharacter 5  # b
•Show KthCharacter 10 # c
