# Problem Link: https://leetcode.com/contest/weekly-contest-283/problems/append-k-integers-with-minimal-sum/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=TWluaW1hbEtTdW0g4oaQIHsKICAgcyDihpAgMsO3y5wxKCvDl+KKoinwnZWoICMgc3VtIAogICBlIOKGkCDwnZWoKOKJpS/iiqIp8J2VqSAgICAjIGV4Y2x1ZGVkIG51bXMKICAgYSDihpAgMSvwnZWoK+KGleKJoGUgICAgIyBhZGRlZCBudW1zCiAgIHMrYS3il4soK8K0KWUKfQoKI01pbmltYWxLU3VtIOKGkCB7CiMgICArwrTwnZWo4oaRMeKGky/wnZWpwqziiJjiiIrLnOKGlTLDlzEw4ouGNQojfQoKIyBUZXN0cwoyIE1pbmltYWxLU3VtIDHigL804oC/MjXigL8xMOKAvzI1ICMgNQo2IE1pbmltYWxLU3VtIDXigL82ICAgICAgICAgICMgMjUKMiBNaW5pbWFsS1N1bSAx4oC/MuKAvzMgICAgICAgICMgOQ==

MinimalKSum ← {
   s ← 2÷˜1(+×⊢)𝕨 # sum 
   e ← 𝕨(≥/⊢)𝕩    # excluded nums
   a ← 1+𝕨+↕≠e    # added nums
   s+a-○(+´)e
}

# Alternative solution after rak1507 pointed out that the above one was wrong (https://twitter.com/rak_1507/status/1501747657739542528?s=20&t=loyHC0NBWwTLWTXrmSq7NA)
MinimalKSum ← {
      +´𝕨↑1↓/𝕩¬∘∊˜↕1+𝕨+≠𝕩

# Tests
2 MinimalKSum 1‿4‿25‿10‿25 # 5
6 MinimalKSum 5‿6          # 25
2 MinimalKSum 1‿2‿3        # 9
