# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/399-1.bqn

# Link: https://leetcode.com/problems/find-the-number-of-good-pairs-i

NumberOfPairs ← { +´⥊(0=⊣|˜𝕨×⊢)⌜´𝕩 }

# Tests
•Show 1 NumberOfPairs ⟨1,3,4⟩‿⟨1,3,4⟩  # 5
•Show 3 NumberOfPairs ⟨1,2,4,12⟩‿⟨2,4⟩ # 2
