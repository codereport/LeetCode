# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/435-1.bqn

# Link: https://leetcode.com/problems/maximum-difference-between-even-and-odd-frequency-i

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

MaxDifference  ← { ⌈´|-´2⊸|⊸(¬⊸/⋈○(⌈´⋈⌊´)/)≠¨⊐⊸⊔𝕩 } # Explicit
MaxDifference2 ← ⌈´·|·-´·2⊸|⊸(¬⊸/⋈○(⌈´⋈⌊´)/)·≠¨⊐⊸⊔  # Tacit

# Tests
u.UnitTest (MaxDifference  "aaaaabbc") ≡ 3
u.UnitTest (MaxDifference  "abcabcab") ≡ 1
u.UnitTest (MaxDifference2 "aaaaabbc") ≡ 3
u.UnitTest (MaxDifference2 "abcabcab") ≡ 1
