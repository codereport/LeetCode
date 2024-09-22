# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b138-1.bqn

# Link: https://leetcode.com/problems/find-the-key-of-the-numbers

GenerateKey ← {10⊸×⊸+˜´⌊˝>{4↑⌽-⟜'0'𝕩}¨•Fmt¨𝕩}
            # {10⊥⌊⌿⌽↑{⌽⍎¨⍕⍵}¨⍵}

# Tests
•Show GenerateKey ⟨1,10,100⟩    # 0
•Show GenerateKey ⟨987,879,798⟩ # 777
•Show GenerateKey ⟨1,2,3⟩       # 1
