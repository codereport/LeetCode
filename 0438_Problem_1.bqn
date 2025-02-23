# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/438-1.bqn

# Link: https://leetcode.com/problems/check-if-digits-are-equal-in-string-after-operations-i

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

HasSameDigits  ← {
    Rec ← { 1=≠𝕩 ? ⊑𝕩 ; 𝕊 10⊸|∘+fn._AdjMap𝕩 }
    (¯1⊸⊑=Rec) 𝕩-'0'
}

# Tests
u.UnitTest (HasSameDigits "3902")  ≡ 1
u.UnitTest (HasSameDigits "34789") ≡ 0
