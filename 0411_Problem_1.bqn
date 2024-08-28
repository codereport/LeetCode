# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/411-1.bqn

# Link: https://leetcode.com/problems/count-substrings-that-satisfy-k-constraint-i/

# 1-Liner
CountKConstraintSubstrings ← {+´𝕨⊸{∨´𝕨≥+´˘"10"=⌜𝕩}¨∾1⊸↓¨↑¨↓𝕩}

# Multi-Liner
PowerSlice   ← ∾·1⊸↓¨·↑¨↓
BinaryString ← {∨´𝕨≥+´˘"10"=⌜𝕩}
CountKConstraintSubstrings2 ← {+´𝕨⊸BinaryString¨ PowerSlice 𝕩}

# Tests
•Show 1 CountKConstraintSubstrings  "10101"   # 12
•Show 2 CountKConstraintSubstrings  "1010101" # 25
•Show 1 CountKConstraintSubstrings  "11111"   # 15
•Show 1 CountKConstraintSubstrings2 "10101"   # 12
•Show 2 CountKConstraintSubstrings2 "1010101" # 25
•Show 1 CountKConstraintSubstrings2 "11111"   # 15
