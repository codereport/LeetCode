# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/418-1.bqn

# Link: https://leetcode.com/problems/maximum-possible-number-by-binary-concatenation

⟨Permutations⟩    ⇐ •Import "../lib/fun.bqn"
⟨Binary, Decimal⟩ ⇐ •Import "../lib/binary.bqn"

MaxGoodNumber ← ⌈´·Decimal∘∾∘(Binary¨)˘Permutations

# Tests
•Show MaxGoodNumber ⟨1,2,3⟩  # 30
•Show MaxGoodNumber ⟨2,8,16⟩ # 1296
