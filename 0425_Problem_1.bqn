# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/425-1.bqn

# Link: https://leetcode.com/problems/adjacent-increasing-subarrays-detection-i

⟨UnitTest⟩ ⇐ •Import "/home/cph/bqn-test/test.bqn"

MinimumSumSubarray ← { ×∘≠◶¯1‿(⌊´)0⊸<⊸/∾+´˘¨↕⟜𝕨¨(⊑𝕩)+↕1+-˜´𝕩 }

# Tests
UnitTest (⟨3,-2,1,4⟩  MinimumSumSubarray 2‿3) ≡  1
UnitTest (⟨-2,2,-3,1⟩ MinimumSumSubarray 2‿3) ≡ -1
UnitTest (⟨1,2,3,4⟩   MinimumSumSubarray 2‿4) ≡  3
