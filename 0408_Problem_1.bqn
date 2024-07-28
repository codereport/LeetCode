# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/408-1.bqn

# Link: https://leetcode.com/problems/find-if-digit-game-can-be-won

CanAliceWin ← ≠´·+´¨9⊸<⊸⊔

# Tests
•Show CanAliceWin ⟨1,2,3,4,10⟩   # 0
•Show CanAliceWin ⟨1,2,3,4,5,14⟩ # 1
•Show CanAliceWin ⟨5,5,5,25⟩     # 1
