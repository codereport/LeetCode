# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/427-1.bqn

# Link: https://leetcode.com/problems/transformed-array

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

ConstructTransformedArray  ← {𝕩⊏˜(≠𝕩)|𝕩+↕≠𝕩} # Explicit
ConstructTransformedArray2 ← (≠|↕∘≠⊸+)⊸⊏     # Tacit

# Tests
u.UnitTest (ConstructTransformedArray  3‿¯2‿1‿1) ≡ 1‿1‿1‿3
u.UnitTest (ConstructTransformedArray  ¯1‿4‿¯1)  ≡ ¯1‿¯1‿4
u.UnitTest (ConstructTransformedArray2 3‿¯2‿1‿1) ≡ 1‿1‿1‿3
u.UnitTest (ConstructTransformedArray2 ¯1‿4‿¯1)  ≡ ¯1‿¯1‿4
