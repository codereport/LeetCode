# Problem Link: https://leetcode.com/problems/time-needed-to-buy-tickets/submissions/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=VGltZVJlcXVpcmVkVG9CdXkg4oaQIHsKICAgcCDihpAg8J2VqOKKkfCdlakKICAgK8K0KChwLTEp4oyKKPCdlagrMSnihpPwnZWpKeKIvnDijIoo8J2VqCsxKeKGkfCdlakKfQoKMiBUaW1lUmVxdWlyZWRUb0J1eSAy4oC/M+KAvzIKMCBUaW1lUmVxdWlyZWRUb0J1eSA14oC/MeKAvzHigL8x

TimeRequiredToBuy ← {
   p ← 𝕨⊑𝕩
   +´((p-1)⌊(𝕨+1)↓𝕩)∾p⌊(𝕨+1)↑𝕩
}

# Tests
2 TimeRequiredToBuy 2‿3‿2
0 TimeRequiredToBuy 5‿1‿1‿1
