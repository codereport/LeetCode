# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b146-1.bqn

# Link: https://leetcode.com/problems/count-subarrays-of-length-three-with-a-condition

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

CountSubarrays  ← +´·{𝕊a‿b‿c:b=2×a+c}˘3↕⊢
CountSubarrays2 ← +´·(⊑=2×·+´1↓⊢)˘1⌽˘3↕⊢

# Tests
u.UnitTest (CountSubarrays  ⟨1,2,1,4,1⟩) ≡ 1
u.UnitTest (CountSubarrays  ⟨1,1,1⟩)     ≡ 0
u.UnitTest (CountSubarrays2 ⟨1,2,1,4,1⟩) ≡ 1
u.UnitTest (CountSubarrays2 ⟨1,1,1⟩)     ≡ 0
