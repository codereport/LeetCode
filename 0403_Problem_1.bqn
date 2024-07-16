# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/403-1.bqn

# Link: https://leetcode.com/problems/minimum-average-of-smallest-and-largest-elements

# Solution 1
H ← ÷⟜2
MinAvg ← H·⌊´H∘≠(↑+⌽∘↓)∧

# Solution 2
MinAvg2 ← 2÷˜·⌊´·+˝·⌽⌾⊏2‿∘⥊∧

# Tests
•Show MinAvg  ⟨7,8,3,4,15,13,4,1⟩ # 5.5
•Show MinAvg  ⟨1,9,8,3,10,5⟩      # 5.5
•Show MinAvg  ⟨1,2,3,7,8,9⟩       # 5.0
•Show MinAvg2 ⟨7,8,3,4,15,13,4,1⟩ # 5.5
•Show MinAvg2 ⟨1,9,8,3,10,5⟩      # 5.5
•Show MinAvg2 ⟨1,2,3,7,8,9⟩       # 5.0
