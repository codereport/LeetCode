# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b140-2.bqn

# Link: https://leetcode.com/problems/maximize-the-total-height-of-unique-towers

MaximumTotalSum ← { {⊑0∊𝕩?¯1;+´𝕩}(-⟜1⌊⊢)`∨𝕩 }

# Tests
•Show MaximumTotalSum ⟨2,3,4,3⟩ # 10
•Show MaximumTotalSum ⟨15,10⟩ # 25
•Show MaximumTotalSum ⟨2,2,1⟩ # -1
