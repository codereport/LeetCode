# Problem Link: https://leetcode.com/contest/weekly-contest-282/problems/counting-words-with-a-given-prefix/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=UHJlZml4Q291bnQg4oaQIHvwnZWpL8ucKOKKkfCdlajiirjijbcpwqjwnZWpfQpQcmVmaXhDb3VudCDihpAge/Cdlakvy5zwnZWo4oq4KOKKkeKImOKNtynCqPCdlal9CgojIFRlc3RzCiJhdCIgUHJlZml4Q291bnQgInBheSLigL8iYXR0ZW50aW9uIuKAvyJwcmFjdGljZSLigL8iYXR0ZW5kIiAjIOKfqCAiYXR0ZW50aW9uIiAiYXR0ZW5kIiDin6kKImNvZGUiIFByZWZpeENvdW50ICJsZWV0Y29kZSLigL8id2lucyLigL8ibG9vcHMi4oC/InN1Y2Nlc3MiICMg4p+o4p+p

PrefixCount ← {𝕩/˜(⊑𝕨⊸⍷)¨𝕩}  # Solution 1
PrefixCount ← {𝕩/˜𝕨⊸(⊑∘⍷)¨𝕩} # Solution 2

# Tests
"at" PrefixCount "pay"‿"attention"‿"practice"‿"attend" # ⟨ "attention" "attend" ⟩
"code" PrefixCount "leetcode"‿"wins"‿"loops"‿"success" # ⟨⟩
