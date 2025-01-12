# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/432-1.bqn

# Link: https://leetcode.com/problems/zigzag-grid-traversal-with-skip

u ⇐ •Import "/home/cph/bqn-test/test.bqn"

ZigZagTraversal ← { F ← 2|↕∘≠ ⋄ m ← F𝕩 ⋄ ¬∘F⊸/∾⌽¨⌾(m⊸/)𝕩 }

# Tests
u.UnitTest (ZigZagTraversal ⟨⟨1,2⟩,⟨3,4⟩⟩)             ≡ ⟨1,4⟩
u.UnitTest (ZigZagTraversal ⟨⟨2,1⟩,⟨2,1⟩,⟨2,1⟩⟩)       ≡ ⟨2,1,2⟩
u.UnitTest (ZigZagTraversal ⟨⟨1,2,3⟩,⟨4,5,6⟩,⟨7,8,9⟩⟩) ≡ ⟨1,3,5,7,9⟩
