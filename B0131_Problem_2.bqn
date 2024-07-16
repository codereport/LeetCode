# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/b131-2.bqn

# Link: https://leetcode.com/problems/find-occurrences-of-an-element-in-an-array

OccurencesOfElement ← { n‿q‿x ← 𝕩 ⋄ ¯1+((1+↕∘≠)⊸×)+x=n }

# Tests
•Show OccurencesOfElement ⟨1,3,1,7⟩‿⟨1,3,2,4⟩‿1 # ⟨0,-1,2,-1⟩
•Show OccurencesOfElement ⟨1,2,3⟩‿⟨10⟩‿5        # ⟨-1⟩
