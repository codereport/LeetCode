# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/406-1.bqn

# Link: https://leetcode.com/problems/lexicographically-smallest-string-after-a-swap

GetSmallestString ← { 𝕩{0=≠𝕩?𝕨;⌽⌾(2↑(⊑𝕩)⊸↓)𝕨}/(>∧≠○|)´˘2↕•BQN∘⥊¨ 𝕩 }

# Tests
•Show GetSmallestString "45320" # 43520
•Show GetSmallestString "001"   # 001
•Show GetSmallestString "20"    # 02
