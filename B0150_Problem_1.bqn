# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b150-1.bqn

# Link: https://leetcode.com/problems/sum-of-good-numbers

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SumOfGoodNumbers ← { +´𝕩×∧´¨𝕩>¨(0⊸≤∧≤⟜(n-1))◶⟨0,⊑⟜𝕩⟩¨¨((+⋈-)⟜𝕨)¨↕n ← ≠𝕩 }

# Tests
u.UnitTest (2 SumOfGoodNumbers ⟨1,3,2,1,5,4⟩) ≡ 12
u.UnitTest (1 SumOfGoodNumbers ⟨2,1⟩) ≡ 2
