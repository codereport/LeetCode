# Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=TWF4aW11bURpZmZlcmVuY2Ug4oaQICjijIjCtMKvMeKIvjDiirjiiaAv4oqiKeKKoi3ijIpgCgpNYXhpbXVtRGlmZmVyZW5jZSA34oC/MeKAvzXigL80Ck1heGltdW1EaWZmZXJlbmNlIDnigL804oC/M+KAvzIKTWF4aW11bURpZmZlcmVuY2UgMeKAvzXigL8y4oC/MTAKCg==

# Original Solution
MaximumDifference ← (¯1⌈´0⊸≠/⊢)⌈`⌾⌽-⊢

# Best Solution
MaximumDifference ← (¯1⌈´0⊸≠/⊢)⊢-⌊`

# Golfed Solution
MaximumDifference ← (¯1⌈´×/⊢)⊢-⌊`

MaximumDifference 7‿1‿5‿4
MaximumDifference 9‿4‿3‿2
MaximumDifference 1‿5‿2‿10
