# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/399-1.bqn

# Link: https://leetcode.com/problems/find-the-number-of-good-pairs-i

NumberOfPairs   ← { +´⥊(0=⊣|˜𝕨×⊢)⌜´𝕩 }
NumberOfPairs2  ← { +´⥊0=|˜⌜⟜(𝕨⊸×)´𝕩 } # Solution 2 Thanks to Marshall
_NumberOfPairs3 ← { +´·⥊0=|˜⌜⟜(𝕗⊸×) }  # Solution 3 Thanks to Marshall

# Tests
•Show 1 NumberOfPairs  ⟨1,3,4⟩‿⟨1,3,4⟩     # 5
•Show 3 NumberOfPairs  ⟨1,2,4,12⟩‿⟨2,4⟩    # 2
•Show 1 NumberOfPairs2 ⟨1,3,4⟩‿⟨1,3,4⟩     # 5
•Show 3 NumberOfPairs2 ⟨1,2,4,12⟩‿⟨2,4⟩    # 2
•Show    ⟨1,3,4⟩ 1 _NumberOfPairs3 ⟨1,3,4⟩ # 5
•Show ⟨1,2,4,12⟩ 3 _NumberOfPairs3 ⟨2,4⟩   # 2
