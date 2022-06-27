# Problem Link: https://leetcode.com/contest/weekly-contest-299/problems/check-if-matrix-is-x-matrix/

CheckMatrix ← {(1⌊𝕩)≡⌽⊸⌈=⌜˜↕≠𝕩}

# Tests
a ← 4‿4⥊⟨2,0,0,1,0,3,1,0,0,5,2,0,4,0,0,2⟩
b ← 3‿3⥊⟨5,7,0,0,3,1,0,5,0⟩

CheckMatrix a # 1
CheckMatrix b # 0
