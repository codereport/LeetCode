# Problem Link: https://leetcode.com/contest/biweekly-contest-91/problems/number-of-distinct-averages/

DistinctAverages ← {
  n ← 2÷˜≠𝕩
  ≠⍷(n⊸↑+n⊸↑∘⌽)∧𝕩
}

# Tests
DistinctAverages ⟨4,1,4,0,3,5⟩ # 2
DistinctAverages ⟨1, 100⟩      # 1
