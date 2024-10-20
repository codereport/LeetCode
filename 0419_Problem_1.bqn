# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/419-1.bqn

# Link: https://leetcode.com/problems/find-x-sum-of-all-k-long-subarrays-i

FindXSum ← { 𝕊n‿k‿x: {+´×´¨x↑∨⋈¨⟜(↕∘≠)/⁼𝕩}˘k↕n }

# Tests
•Show FindXSum ⟨1,1,2,2,3,4,2,3⟩‿6‿2 # [6,10,12]
•Show FindXSum ⟨3,8,7,8,7,5⟩‿2‿2     # [11,15,15,15,12]
