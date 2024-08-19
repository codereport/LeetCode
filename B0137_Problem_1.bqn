# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b137-1.bqn

# Links: https://leetcode.com/problems/find-the-power-of-k-size-subarrays-i

⟨Deltas⟩ ⇐ •Import "../lib/fun.bqn"

ResultsArray ← {∧´1=Deltas𝕩?⌈´𝕩;¯1}˘↕

# Tests
•Show 3 ResultsArray [1,2,3,4,3,2,5] # [3,4,-1,-1,-1]
•Show 4 ResultsArray [2,2,2,2,2]     # [-1,-1]
•Show 2 ResultsArray [3,2,3,2,3,2]   # [-1,3,-1,3,-1]
