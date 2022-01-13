# Problem Link: https://leetcode.com/contest/weekly-contest-275/problems/count-words-obtained-after-adding-a-letter/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=Q29udmVydGlibGUg4oaQIHviiKjCtPCdlaniirgo4omh4peL4oinKcKo8J2VqOKKuOKIvsKo8J2VqCjCrOKImOKIisucL+KKoiknYScr4oaVMjZ9CldvcmRDb3VudCAgIOKGkCArwrTipYriiJgoQ29udmVydGlibGXijJwpCgojIFRlc3RzCiJhbnQi4oC/ImFjdCLigL8idGFjayIgV29yZENvdW50ICJ0YWNrIuKAvyJhY3Qi4oC/ImFjdGkiICMgMgoiYWIi4oC/ImEiICAgICAgICAgICBXb3JkQ291bnQgImFiYyLigL8iYWJjZCIgICAgICAgICMgMQ==

Convertible ← {∨´𝕩⊸(≡○∧)¨𝕨⊸∾¨𝕨(¬∘∊˜/⊢)'a'+↕26}
WordCount   ← +´⥊∘(Convertible⌜)

# Tests
"ant"‿"act"‿"tack" WordCount "tack"‿"act"‿"acti" # 2
"ab"‿"a"           WordCount "abc"‿"abcd"        # 1
