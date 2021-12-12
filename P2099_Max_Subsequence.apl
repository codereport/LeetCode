⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-67/problems/find-subsequence-of-length-k-with-the-largest-sum/

maxSubsequence ← {+/⍺↑(⊂⍤⍒⌷⊢)⍵}
maxSubsequence ← +/⊣↑(⊂⍤⍒⌷⊢)⍤⊢ ⍝ Point Free
      
⍝ Tests
2 maxSubsequence 2 1 3 3   ⍝ 6
3 maxSubsequence ¯1 ¯2 3 4 ⍝ 6
2 maxSubsequence 3 4 3 3   ⍝ 7
