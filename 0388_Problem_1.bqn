# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/388-1.bqn

# Link: https://leetcode.com/problems/apple-redistribution-into-boxes/description/

MinimumBoxes  ← +´⊸(1+·+´>)⟜(+`∨)  # Tacit
MinimumBoxes2 ← 1++´∘(+´⊸>⟜(+`∨))  # Tacit 2
MinimumBoxes3 ← { 1++´(+´𝕨)>+`∨𝕩 } # Explicit

# Tests
•Show ⟨1,3,2⟩ MinimumBoxes  ⟨4,3,1,5,2⟩ # 2
•Show ⟨5,5,5⟩ MinimumBoxes  ⟨2,4,2,7⟩   # 4
•Show ⟨1,3,2⟩ MinimumBoxes2 ⟨4,3,1,5,2⟩ # 2
•Show ⟨5,5,5⟩ MinimumBoxes2 ⟨2,4,2,7⟩   # 4
•Show ⟨1,3,2⟩ MinimumBoxes3 ⟨4,3,1,5,2⟩ # 2
•Show ⟨5,5,5⟩ MinimumBoxes3 ⟨2,4,2,7⟩   # 4
