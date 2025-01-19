# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b148-1.bqn

# Link: https://leetcode.com/problems/maximum-difference-between-adjacent-elements-in-a-circular-array

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

MaxAdjacentDistance  ← ⌈´·|·fn.Deltas(1+≠)⊸⥊   # Tacit
MaxAdjacentDistance2 ← { ⌈´|fn.Deltas𝕩⥊˜1+≠𝕩 } # Explicit

# Tests
u.UnitTest (MaxAdjacentDistance  1‿2‿4)     ≡ 3
u.UnitTest (MaxAdjacentDistance  ¯5‿¯10‿¯5) ≡ 5
u.UnitTest (MaxAdjacentDistance2 1‿2‿4)     ≡ 3
u.UnitTest (MaxAdjacentDistance2 ¯5‿¯10‿¯5) ≡ 5
