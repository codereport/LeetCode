⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-49/problems/sentence-similarity-iii/

solve←{
   m  ← (≢⍵)≥⍳≢⍺    ⍝ mask
   rm ← (m⌽⍨⊢)¨⍳≢⍵  ⍝ rotated masks
   ps ← (⍺⊢⍤/⍨⊢)¨rm ⍝ possible strings
   ∨/⍵∘≡¨ps
}
