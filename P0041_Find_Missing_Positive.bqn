# Problem Link: https://leetcode.com/problems/first-missing-positive/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=I0kg4oaQIDEr4oaV4oiY4omgCiNGaXJzdE1pc3NpbmdOdW0g4oaQICjiipFJL8uc4oqi4omgSSkoMSviiaAp4oaRKOKIpzDiirg8L+KKoikKCkZpbmRNaXNzaW5nUG9zaXRpdmUg4oaQICgxK+KKkeKImC8p4oiYKMKs4oqi4oiKy5wxKyjihpUxK+KJoCkpCgpGaW5kTWlzc2luZ1Bvc2l0aXZlIMKoICgx4oC/MuKAvzAp4oC/KDPigL804oC/wq8x4oC/MSnigL8oN+KAvzjigL854oC/MTHigL8xMik=

# First Solution
I ← 1+↕∘≠
FindMissingPositive ← (⊑I/˜⊢≠I)(1+≠)↑(∧0⊸</⊢)

# Second Solution
FindMissingPositive ← (1+⊑∘/)∘(¬⊢∊˜1+(↕1+≠))

# LeetCode Tests
FindMissingPositive ¨ (1‿2‿0)‿(3‿4‿¯1‿1)‿(7‿8‿9‿11‿12)
