# Problem Link: https://leetcode.com/contest/weekly-contest-274/problems/check-if-all-as-appears-before-all-bs/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=Q2hlY2tTdHJpbmcg4oaQIOKIqGDiirjiiaEnYifiirg9CgojIFRlc3RzCkNoZWNrU3RyaW5nIMKoICJhYWFiYmIi4oC/ImFiYWIi4oC/ImJiYiI=

# Solution 1
CheckString ← ∨`⊸≡'b'⊸=

# Solution 2
CheckString ← {¬∨´"ba"⍷𝕩}
CheckString ← "ba"⊸((¬∨´)⍷)

# Tests
CheckString ¨ "aaabbb"‿"abab"‿"bbb"
