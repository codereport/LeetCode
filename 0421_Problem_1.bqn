# For up to date code:
# https://github.com/codereport/bqn-code/blob/main/leetcode/421-1.bqn

# Link: https://leetcode.com/problems/find-the-maximum-factor-score-of-array

Score    ← •math.GCD´×•math.LCM´
MaxScore ← ⌈´·Score¨({<˘¬=⌜˜↕≠𝕩}/¨<)∾<

# Tests
•Show MaxScore ⟨2,4,8,16⟩  # 64
•Show MaxScore ⟨1,2,3,4,5⟩ # 60
