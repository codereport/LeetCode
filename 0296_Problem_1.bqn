# Problem Link: https://leetcode.com/contest/weekly-contest-296/problems/min-max-game/

Chunk   ← {<˘(𝕨÷˜≠𝕩)‿𝕨⥊𝕩}
NewNums ← {∾{(⌊´2↑𝕩)∾⌈´2⌊𝕩}¨4 Chunk 𝕩}

MinMaxGame ← {
  2≥≠𝕩 ? ⌊´0⊸↓𝕩 ;
  n ← ¯1+2⋆⁼≠𝕩
  ⌊´NewNums⍟n 𝕩
}

MinMaxGame 1‿3‿5‿2‿4‿8‿2‿2 # 1
MinMaxGame 3               # 3
