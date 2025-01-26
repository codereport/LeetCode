# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/434-1.bqn

# Link: https://leetcode.com/problems/count-partitions-with-even-sum-difference

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

CountPartitions ← +´0=2|+´-2×¯1↓+`

# Tests
u.UnitTest (CountPartitions ⟨10,10,3,7,6⟩) ≡ 4
u.UnitTest (CountPartitions ⟨1,2,2⟩)       ≡ 0
u.UnitTest (CountPartitions ⟨2,4,6,8⟩)     ≡ 3
