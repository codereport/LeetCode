# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/433-1.bqn

# Link: https://leetcode.com/problems/sum-of-variable-length-subarrays

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SubarraySum ← +´·∾((0⌈↕∘≠⊸-)↓¨(↕¨1↓·↕1+≠))⊏¨<

# Tests
u.UnitTest (SubarraySum 2‿3‿1)   ≡ 11
u.UnitTest (SubarraySum 3‿1‿1‿2) ≡ 13
