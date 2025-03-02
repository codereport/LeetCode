# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b151-1.bqn

# Link: https://leetcode.com/problems/transform-array-by-parity

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

TransformArray ← ∧2⊸|

# Tests
u.UnitTest (TransformArray ⟨4,3,2,1⟩)   ≡ ⟨0,0,1,1⟩
u.UnitTest (TransformArray ⟨1,5,1,4,2⟩) ≡ ⟨0,0,1,1,1⟩
