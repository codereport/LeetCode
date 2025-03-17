# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/441-1.bqn

# Link: https://leetcode.com/problems/maximum-unique-subarray-sum-after-deletion

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxSum ← +´·⍷0⊸<⊸×

# Tests
u.UnitTest (MaxSum ⟨1,2,3,4,5⟩)        ≡ 15
u.UnitTest (MaxSum ⟨1,1,0,1,1⟩)        ≡ 1
u.UnitTest (MaxSum ⟨1,2,-1,-2,1,0,-1⟩) ≡ 3
