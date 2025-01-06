# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/428-1.bqn

# Link: https://leetcode.com/problems/button-with-longest-push-time

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"
fn ⇐ •Import "/home/cph/bqn-code/lib/fun.bqn"

ButtonWithLongestTime ← ⌊´((⌈´⊸=⊑∾fn.Deltas)⊢´¨)/⊑¨

# Tests
u.UnitTest (ButtonWithLongestTime ⟨⟨1,2⟩,⟨2,5⟩,⟨3,9⟩,⟨1,15⟩⟩) ≡  1
u.UnitTest (ButtonWithLongestTime ⟨⟨10,5⟩,⟨1,7⟩⟩)             ≡ 10
