# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/426-1.bqn

# Link: https://leetcode.com/problems/smallest-number-with-all-set-bits

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
b  ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"

SmallestNumber ← { ∧´b.Binary𝕩 ? 𝕩 ; 𝕊𝕩+1 }

# # Tests
u.UnitTest (SmallestNumber 5)  ≡ 7
u.UnitTest (SmallestNumber 10) ≡ 15
u.UnitTest (SmallestNumber 3)  ≡ 3
