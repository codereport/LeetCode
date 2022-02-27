# Problem Link: 
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=UHJlZml4Q291bnQg4oaQIHvwnZWpL8ucKOKKkfCdlajiirjijbcpwqjwnZWpfQoKIyBUZXN0cwoiYXQiIFByZWZpeENvdW50ICJwYXki4oC/ImF0dGVudGlvbiLigL8icHJhY3RpY2Ui4oC/ImF0dGVuZCIgIyDin6ggImF0dGVudGlvbiIgImF0dGVuZCIg4p+pCiJjb2RlIiBQcmVmaXhDb3VudCAibGVldGNvZGUi4oC/IndpbnMi4oC/Imxvb3BzIuKAvyJzdWNjZXNzIiAjIOKfqOKfqQ==

PrefixCount ← {𝕩/˜(⊑𝕨⊸⍷)¨𝕩}

# Tests
"at" PrefixCount "pay"‿"attention"‿"practice"‿"attend" # ⟨ "attention" "attend" ⟩
"code" PrefixCount "leetcode"‿"wins"‿"loops"‿"success" # ⟨⟩
