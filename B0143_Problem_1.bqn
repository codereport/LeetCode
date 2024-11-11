# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b143-1.bqn

# Link: https://leetcode.com/problems/smallest-divisible-digit-product-i

⟨Digits⟩ ⇐ •Import "../lib/binary.bqn"

SmallestNumber ← { 0=𝕨|×´Digits𝕩 ? 𝕩 ; 𝕨𝕊1+𝕩 }

# Tests
•Show 2 SmallestNumber 10 # 10
•Show 3 SmallestNumber 15 # 16