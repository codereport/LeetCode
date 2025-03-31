# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b153-1.bqn

# Link: https://leetcode.com/problems/reverse-degree-of-a-string

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

ReversedDegree  ← { +´(↕∘≠×○(1⊸+)⊢)𝕩⊐˜⌽'a'+↕26 } # Explicit
ReversedDegree2 ← +´·(↕∘≠×○(1⊸+)⊢)(⌽'a'+↕26)⊸⊐   # Tacit

# Tests
u.UnitTest (ReversedDegree  "abc")  ≡ 148
u.UnitTest (ReversedDegree  "zaza") ≡ 160
u.UnitTest (ReversedDegree2 "abc")  ≡ 148
u.UnitTest (ReversedDegree2 "zaza") ≡ 160
