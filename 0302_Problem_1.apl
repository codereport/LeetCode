⍝ Problem Link: https://leetcode.com/contest/weekly-contest-302/problems/maximum-number-of-pairs-in-array/

numberOfPairs ← {
   r ← +/2|≢⍤⊢⌸,⍵
   r,⍨2÷⍨r-⍨≢⍵
}

⍝ Tests
numberOfPairs 1 3 2 1 3 2 2 ⍝ 3 1
numberOfPairs 1 1           ⍝ 1 0
numberOfPairs 0             ⍝ 0 1
