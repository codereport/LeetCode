⍝ Problem Link: https://leetcode.com/contest/weekly-contest-304/problems/make-array-zero-by-subtracting-equal-amounts/
minimumOperations ← {≢∪⍵~0}
      
⍝ Tests
minimumOperations 1 5 0 3 5 ⍝ 3
minimumOperations 0         ⍝ 0
