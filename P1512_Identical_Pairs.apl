⍝ https://leetcode.com/problems/number-of-good-pairs/

⍝ Solution 1
numIdenticalPairs ← 2÷⍨({+/,∘.=⍨⍵}-≢)

⍝ Solution 2
numIdenticalPairs ← +/(,(∘.<⍨⍳∘≢)×∘.=⍨)

⍝ Solution 3 (in an APL version that has triangle product ◹)
numIdenticalPairs ← +/(,◹=⍨)
