# Problem Link: https://leetcode.com/contest/biweekly-contest-73/problems/most-frequent-number-following-key-in-an-array/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=TW9zdEZyZXF1ZW50IOKGkCB74oyIwrTiirg94oiY4oqS4oq4L+KKkeKImOKMvcuYKPCdlag94oqRKcuY4oq4LzLihpXwnZWpfQoKMSBNb3N0RnJlcXVlbnQgMeKAvzEwMOKAvzIwMOKAvzHigL8xMDAgIyAxMDAKMiBNb3N0RnJlcXVlbnQgMuKAvzLigL8y4oC/MuKAvzMgICAgICAgIyAyCgo=

MostFrequent ← {⌈´⊸=∘⊒⊸/⊑∘⌽˘(𝕨=⊑)˘⊸/2↕𝕩}

# Tests
1 MostFrequent 1‿100‿200‿1‿100 # 100
2 MostFrequent 2‿2‿2‿2‿3       # 2

# Improvements: https://discord.com/channels/821509511977762827/821511464090992640/951660879668183072
