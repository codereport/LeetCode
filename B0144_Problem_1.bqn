# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b144-1.bqn

# Link: https://leetcode.com/problems/smallest-divisible-digit-product-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

CanAliceWin ← {2|+´𝕩≥+`⌽↕11}

# Tests
UnitTest (CanAliceWin 12) ≡ 1
UnitTest (CanAliceWin 11) ≡ 1
UnitTest (CanAliceWin 10) ≡ 1
UnitTest (CanAliceWin 19) ≡ 0
UnitTest (CanAliceWin 26) ≡ 0
UnitTest (CanAliceWin 27) ≡ 1
UnitTest (CanAliceWin  1) ≡ 0
