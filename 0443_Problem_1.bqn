# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/443-1.bqn

# Link: https://leetcode.com/problems/minimum-cost-to-reach-every-position

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinCosts ← ⌊`

# Tests
u.UnitTest (MinCosts ⟨5,3,4,1,3,2⟩) ≡ ⟨5,3,3,1,1,1⟩
u.UnitTest (MinCosts ⟨1,2,4,6,7⟩)   ≡ ⟨1,1,1,1,1⟩
