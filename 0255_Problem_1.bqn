# Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=R0NEICAgICDihpAge/CdlagofPCdlYrijZ8oPuKfnDAp4oqjKfCdlal9CkZpbmRHQ0Qg4oaQIOKMiMK0R0NE4oyKwrQKCiMgTGVldGNvZGUgVGVzdHMKCkZpbmRHQ0QgwqggKDLigL814oC/NuKAvznigL8xMCnigL8oN+KAvzXigL824oC/OOKAvzMp4oC/KDPigL8zKQ==

GCD     ← {𝕨(|𝕊⍟(>⟜0)⊣)𝕩}
FindGCD ← ⌈´GCD⌊´

# Leetcode Tests

FindGCD ¨ (2‿5‿6‿9‿10)‿(7‿5‿6‿8‿3)‿(3‿3)
