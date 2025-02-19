# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/437-1.bqn

# Link: https://leetcode.com/problems/find-special-substring-of-length-k

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

HasSpecialSubstring  ← { ∨´𝕨=≠¨fn.Group𝕩 } # Explicit
HasSpecialSubstring2 ← ∨´=⟜(≠¨fn.Group)    # Tacit

# Tests
u.UnitTest (3 HasSpecialSubstring  "aaabaaa") ≡ 1
u.UnitTest (2 HasSpecialSubstring  "abc")     ≡ 0
u.UnitTest (3 HasSpecialSubstring2 "aaabaaa") ≡ 1
u.UnitTest (2 HasSpecialSubstring2 "abc")     ≡ 0
