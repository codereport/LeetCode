# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b140-1.bqn

# Link: https://leetcode.com/problems/minimum-element-after-replacement-with-digit-sum

MinElement ← ⌊´·+´¨·•BQN∘⥊¨¨•Fmt¨

# Tests
•Show MinElement ⟨10,12,13,14⟩ # 1
•Show MinElement ⟨1,2,3,4⟩     # 1
•Show MinElement ⟨999,19,199⟩  # 10
