# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b149-1.bqn

# Link: https://leetcode.com/problems/find-valid-pair-of-adjacent-digits-in-string

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

# TODO improve
FindValidPair ← { ×∘≠◶⟨⊢,∾·•Fmt¨⊑⟩<˘≠´˘⊸/(∧´˘0⊸≠)⊸/2↕(-⟜'0'(⊣×=)(+´˘=⌜˜))𝕩 }

# Tests
u.UnitTest (FindValidPair "2523533") ≡ "23"
u.UnitTest (FindValidPair "221")     ≡ "21"
u.UnitTest (FindValidPair "22")      ≡ ""
