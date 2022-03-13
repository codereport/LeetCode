# Problem Link: https://leetcode.com/contest/weekly-contest-284/problems/find-all-k-distant-indices-in-an-array/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=RmluZEtEaXN0YW50SW5kaWNlcyDihpAgewogICBrZXnigL9rIOKGkCDwnZWoCiAgIC9r4oml4oyKwrTLmCjihpXiiaDwnZWpKXziiJgt4oycL2tleT3wnZWpCn0KCiMgVGVzdHMKOeKAvzEgRmluZEtEaXN0YW50SW5kaWNlcyAz4oC/NOKAvznigL8x4oC/M+KAvznigL81ICMg4p+oIDEgMiAzIDQgNSA2IOKfqQoy4oC/MiBGaW5kS0Rpc3RhbnRJbmRpY2VzIDLigL8y4oC/MuKAvzLigL8yICAgICAjIOKfqCAwIDEgMiAzIDQg4p+p

FindKDistantIndices ← {
   key‿k ← 𝕨
   /k≥⌊´˘(↕≠𝕩)|∘-⌜/key=𝕩
}

# Tests
9‿1 FindKDistantIndices 3‿4‿9‿1‿3‿9‿5 # ⟨ 1 2 3 4 5 6 ⟩
2‿2 FindKDistantIndices 2‿2‿2‿2‿2     # ⟨ 0 1 2 3 4 ⟩
