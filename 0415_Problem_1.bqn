# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/415-1.bqn

# Link: https://leetcode.com/problems/the-two-sneaky-numbers-of-digitville

GetSneakyNumbers  ← (0∾·¬·≠´˘2↕⊢)⊸/∧ # Solution 1
GetSneakyNumbers2 ← ¬∘∊⊸/

# Tests
•Show GetSneakyNumbers  ⟨0,1,1,0⟩                 # [0,1]
•Show GetSneakyNumbers  ⟨0,3,2,1,3,2⟩             # [2,3]
•Show GetSneakyNumbers  ⟨7,1,5,4,3,4,6,0,9,5,8,2⟩ # [4,5]
•Show GetSneakyNumbers2 ⟨0,1,1,0⟩                 # [0,1]
•Show GetSneakyNumbers2 ⟨0,3,2,1,3,2⟩             # [2,3]
•Show GetSneakyNumbers2 ⟨7,1,5,4,3,4,6,0,9,5,8,2⟩ # [4,5]
