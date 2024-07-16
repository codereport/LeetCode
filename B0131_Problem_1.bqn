# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b131-1.bqn

# Link: https://leetcode.com/problems/find-the-xor-of-numbers-which-appear-twice

Xor ← {⊑𝕨⟨32⟩•bit._xor⟨𝕩⟩} # TODO has to be a better way to do this

DuplicateNumbersXor ← Xor´0‿0∾·⍷(2=·+˝=⌜˜)⊸/

# Tests
•Show DuplicateNumbersXor ⟨1,2,1,3⟩ # 1
•Show DuplicateNumbersXor ⟨1,2,3⟩   # 0
•Show DuplicateNumbersXor ⟨1,2,2,1⟩ # 3
