# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/442-1.bqn

# Link: https://leetcode.com/problems/maximum-containers-on-a-ship

u  ⇐ •Import "/home/cph/bqn-test/test.bqn"

MaxContainers ← { 𝕊n‿w‿m: (m÷w)⌊×˜n }

# Tests
u.UnitTest (MaxContainers 2‿3‿15) ≡ 4
u.UnitTest (MaxContainers 3‿5‿20) ≡ 4
