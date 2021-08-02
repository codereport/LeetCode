⍝ Problem Link: https://leetcode.com/contest/weekly-contest-252/problems/three-divisors/

isThree ← (3=≢)(∪⊢∨⍳)

⍝ Translated J Solution: 
⍝ isThree =. [: (3 = #) [: ~. (+. (1 + i.))

⍝ Tranlsation

⍝     J    | J  |   APL  | APL
⍝ =========|====|========|=====
⍝   Tally  | #  |  Tally |  ≢
⍝ Integers | i. |  Iota* |  ⍳
⍝    Nub   | ~. | Unique |  ∪
⍝    GCD   | +. |   GCD  |  ∨

⍝ Technically the name was Index Generator
