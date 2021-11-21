# Problem Link: https://leetcode.com/contest/weekly-contest-268/problems/two-furthest-houses-with-different-colors/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=IyBTb2x1dGlvbiAxCiMgTWF4RGlzdGFuY2Ug4oaQIHvijIjCtHziiL7CtCjihpXiiJjiiaAt4oqiKS/CqDzLmOKJoOKMnMuc8J2VqX0gCgojIFNvbHV0aW9uIDIKTWF4RGlzdGFuY2Ug4oaQIOKMveKMiOKXiygo4oqR4oiY4oy9LeKKkSkv4oiY4oiKKeKKogoKIyBUZXN0cwpNYXhEaXN0YW5jZSAx4oC/MeKAvzHigL824oC/MeKAvzHigL8xICAjIDMKTWF4RGlzdGFuY2UgMeKAvzjigL8z4oC/OOKAvzMgICAgICAjIDQKTWF4RGlzdGFuY2UgMOKAvzEgICAgICAgICAgICAjIDEK

# Solution 1
MaxDistance ← {⌈´|∾´(↕∘≠-⊢)/¨<˘≠⌜˜𝕩} 

# Solution 2
MaxDistance ← ⌽⌈○((⊑∘⌽-⊑)/∘∊)⊢

# Tests
MaxDistance 1‿1‿1‿6‿1‿1‿1  # 3
MaxDistance 1‿8‿3‿8‿3      # 4
MaxDistance 0‿1            # 1
