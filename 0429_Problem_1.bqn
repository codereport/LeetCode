# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/429-1.bqn

# Link: https://leetcode.com/problems/minimum-number-of-operations-to-make-elements-in-array-distinct

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumOperations ← +´·(⍷≠○≠⊢)¨(0=3|↕∘≠)/¯1↓↓

# Tests
u.UnitTest (MinimumOperations ⟨1,2,3,4,2,3,3,5,7⟩) ≡ 2
u.UnitTest (MinimumOperations ⟨4,5,6,4,4⟩)         ≡ 2
u.UnitTest (MinimumOperations ⟨6,7,8,9⟩)           ≡ 0
