# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/423-1.bqn

# Link: https://leetcode.com/problems/adjacent-increasing-subarrays-detection-i

⟨_AdjMap, _ChunkBy⟩ ⇐ •Import "../lib/fun.bqn"

HasIncreasingSubarrays  ← {∨´2=+_AdjMap𝕨=≠¨(¯1=-)_ChunkBy𝕩}  # Explicit
HasIncreasingSubarrays2 ← ∨´2=·+_AdjMap⊣=·≠¨·(¯1=-)_ChunkBy⊢ # Tacit

# Tests
•Show 3 HasIncreasingSubarrays ⟨2,5,7,8,9,2,3,4,3,1⟩ # 1
•Show 5 HasIncreasingSubarrays ⟨1,2,3,4,4,4,4,5,6,7⟩ # 0

•Show 3 HasIncreasingSubarrays2 ⟨2,5,7,8,9,2,3,4,3,1⟩ # 1
•Show 5 HasIncreasingSubarrays2 ⟨1,2,3,4,4,4,4,5,6,7⟩ # 0
