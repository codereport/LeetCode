# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b152-1.bqn

# Link: https://leetcode.com/problems/maximum-product-subarray

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
b  ⇐ •Import "/home/cph/bqn-code/lib/binary.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

TotalNumbers  ← { +´99<(¬2⊸|)⊸/10⊸b.Base¨⍷3 fn.ChooseWR𝕩 } # Explicit
TotalNumbers2 ← +´99<·(¬2⊸|)⊸/·10⊸b.Base¨·⍷3⊸fn.ChooseWR   # Tacit

# Tests
u.UnitTest (TotalNumbers  ⟨1,2,3,4⟩) ≡ 12
u.UnitTest (TotalNumbers  ⟨0,2,2⟩)   ≡ 2
u.UnitTest (TotalNumbers  ⟨6,6,6⟩)   ≡ 1
u.UnitTest (TotalNumbers  ⟨1,3,5⟩)   ≡ 0
u.UnitTest (TotalNumbers2 ⟨1,2,3,4⟩) ≡ 12
u.UnitTest (TotalNumbers2 ⟨0,2,2⟩)   ≡ 2
u.UnitTest (TotalNumbers2 ⟨6,6,6⟩)   ≡ 1
u.UnitTest (TotalNumbers2 ⟨1,3,5⟩)   ≡ 0
