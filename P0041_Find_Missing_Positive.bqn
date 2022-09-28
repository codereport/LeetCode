# Problem Link: https://leetcode.com/problems/first-missing-positive/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=IyBGaW5kTWlzc2luZ1Bvc2l0aXZlIOKGkCAoKDEr4oqR4oiYLykoMSvihpXiiJjiiaAp4omg4oqiKSgxK+KJoCnihpEo4oinMOKKuDwv4oqiKQoKRmluZE1pc3NpbmdQb3NpdGl2ZSDihpAgKDEr4oqR4oiYLyniiJgowqziiqLiiIrLnDErKOKGlTEr4omgKSkKCkZpbmRNaXNzaW5nUG9zaXRpdmUgwqggKDHigL8y4oC/MCnigL8oM+KAvzTigL/CrzHigL8xKeKAvyg34oC/OOKAvznigL8xMeKAvzEyKQ==

# First Solution
FindMissingPositive ← ((1+⊑∘/)(1+↕∘≠)≠⊢)(1+≠)↑(∧0⊸</⊢)

# Second Solution
FindMissingPositive ← (1+⊑∘/)∘(¬⊢∊˜1+(↕1+≠))

# Third Solution

FindMissingPositive ← ⊑1+0⊐˜⊢∊˜1+↕∘≠

# LeetCode Tests
FindMissingPositive ¨ (1‿2‿0)‿(3‿4‿¯1‿1)‿(7‿8‿9‿11‿12)
