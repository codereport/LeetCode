⍝ Problem Link: https://leetcode.com/contest/weekly-contest-273/problems/a-number-after-a-double-reversal/

⍝ Solution 1
isSameAfterReversals ← (⍎∘⌽∘⍕⍣2)=⊢

⍝ Solution 2
isSameAfterReversals ← 0∘=∨(~'0'∊1∘↑,¯1↑⍕)

⍝ Tests
isSameAfterReversals ¨ 526 1800 0 ⍝ 1 0 1
