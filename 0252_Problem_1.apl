⍝ Problem Link: https://leetcode.com/contest/weekly-contest-252/problems/three-divisors/

⍝ Solution 1
isThree ← (3=≢)(∪⊢∨⍳)

⍝ Solution 2 (1 character less)
isThree ← 3=(≢∘∪⊢∨⍳)

⍝ Translated J Solution: 
⍝ isThree =. [: (3 = #) [: ~. (+. (1 + i.))

⍝ Tranlsation

⍝     J    | J  |   APL  | APL
⍝ =========|====|========|=====
⍝   Tally  | #  |  Tally |  ≢
⍝ Integers | i. |  Iota* |  ⍳
⍝    Nub   | ~. | Unique |  ∪
⍝    GCD   | +. |   GCD  |  ∨

⍝ * Technically the name was Index Generator
