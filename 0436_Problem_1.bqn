# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/436-1.bqn

# Link: https://leetcode.com/problems/sort-matrix-by-diagonals

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

SortMatrix  ← ∧¨⌾(⌽¨⌾((⌊2÷˜≠)⊸↓)+⌜○↕´∘≢⊔⌽˘)

# Tests
u.UnitTest (SortMatrix >⟨⟨1,7,3⟩,⟨9,8,2⟩,⟨4,5,6⟩⟩) ≡ >⟨⟨8,2,3⟩,⟨9,6,7⟩,⟨4,5,1⟩⟩
u.UnitTest (SortMatrix >⟨⟨0,1⟩,⟨1,2⟩⟩)             ≡ >⟨⟨2,1⟩,⟨1,0⟩⟩
u.UnitTest (SortMatrix >⟨⟨1⟩⟩)                     ≡ >⟨⟨1⟩⟩
