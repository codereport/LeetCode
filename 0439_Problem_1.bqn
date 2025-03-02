# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/439-1.bqn

# Link: https://leetcode.com/problems/find-the-largest-almost-missing-integer

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

LargestInteger  ← { ⊑¯1∾˜⌽/1=+fn._Xt´/⁼¨<˘𝕨↕𝕩 } # Explicit
LargestInteger2 ← (⊑¯1∾˜·⌽·/1=·+fn._Xt´·/⁼¨<˘)↕ # Tacit

# Tests
u.UnitTest (3 LargestInteger  ⟨3,9,2,1,7⟩)   ≡ 7
u.UnitTest (4 LargestInteger  ⟨3,9,7,2,1,7⟩) ≡ 3
u.UnitTest (1 LargestInteger  ⟨0,0⟩)         ≡ ¯1
u.UnitTest (3 LargestInteger2 ⟨3,9,2,1,7⟩)   ≡ 7
u.UnitTest (4 LargestInteger2 ⟨3,9,7,2,1,7⟩) ≡ 3
u.UnitTest (1 LargestInteger2 ⟨0,0⟩)         ≡ ¯1
