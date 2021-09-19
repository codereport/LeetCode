⍝ Problem Link: https://leetcode.com/contest/weekly-contest-259/problems/final-value-of-variable-after-performing-operations/

finalValueAfterOperations ← +/(-⌿'+-'∘.∊⊢)

⍝ LeetCode Tests
      
      finalValueAfterOperations '--x' '++x' 'x++'
1
      finalValueAfterOperations '++x' '++x' 'x++'
3
      finalValueAfterOperations '++x' '++x' 'x--' '--x'
0
