⍝ Problem Link: https://leetcode.com/contest/weekly-contest-296/problems/min-max-game/

chunk   ← {⍵⊂⍨1=⍺|⍳≢⍵}
newNums ← {∊{(⌊/2↑⍵),⌈/2↓⍵}¨4 chunk ⍵}

minMaxGame ← {
   2≥≢⍵: ⌊/⍵ ⋄
   n ← ¯1+2*(⍣¯1)≢⍵
   ⌊/(newNums⍣n)⍵
}

⍝ Tests
minMaxGame 1 3 5 2 4 8 2 2 ⍝ 1
minMaxGame 3               ⍝ 3
