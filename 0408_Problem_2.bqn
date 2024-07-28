# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/408-2.bqn

# Link: https://leetcode.com/problems/find-the-count-of-numbers-which-are-not-special

To ← ⊣+(↕1+-˜)
Pd ← 2⊸=·+´0=↕⊸|
NonSpecialCount ← +´·¬·Pd¨To

# Tests
•Show 5 NonSpecialCount  7 # 3
•Show 4 NonSpecialCount 16 # 11
