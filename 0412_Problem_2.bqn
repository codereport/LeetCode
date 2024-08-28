# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/412-2.bqn

# Link: https://leetcode.com/problems/count-almost-equal-pairs-i

⟨_Tri, _TriId⟩ ⇐ •Import "../lib/fun.bqn"

SwapTwo    ← {⌽⌾(𝕩⊸⊏)𝕨}
IsPair     ← {⊑𝕨∊{•BQN¨𝕩⊸SwapTwo¨∾⋈_TriId˜↕≠𝕩}•Fmt𝕩}
CountPairs ← +´·∾IsPair _Tri˜

# Tests
•Show CountPairs ⟨3,12,30,17,21⟩ # 2
•Show CountPairs ⟨1,1,1,1,1⟩     # 10
•Show CountPairs ⟨123,231⟩       # 0
