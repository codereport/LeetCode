# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/423-2.bqn

# Link: https://leetcode.com/problems/adjacent-increasing-subarrays-detection-ii

⟨_AdjMap, _ChunkBy⟩ ⇐ •Import "../lib/fun.bqn"

MaxIncreasingSubarrays  ← {(⌊_AdjMap⌈○(⌈´)(⌊÷⟜2))≠¨(¯1=-)_ChunkBy𝕩} # Explicit
MaxIncreasingSubarrays2 ← (⌊_AdjMap⌈○(⌈´)(⌊÷⟜2))·≠¨(¯1=-)_ChunkBy   # Tacit

# Tests
•Show MaxIncreasingSubarrays ⟨2,5,7,8,9,2,3,4,3,1⟩ # 3
•Show MaxIncreasingSubarrays ⟨1,2,3,4,4,4,4,5,6,7⟩ # 2

•Show MaxIncreasingSubarrays2 ⟨2,5,7,8,9,2,3,4,3,1⟩ # 3
•Show MaxIncreasingSubarrays2 ⟨1,2,3,4,4,4,4,5,6,7⟩ # 2
