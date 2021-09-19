⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-61/problems/count-number-of-pairs-with-absolute-difference-k/

countKDifference ← +/⍤,⊣=∘.-⍨⍤⊢

⍝ LeetCode Tests

      1 countKDifference 1 2 2 1
4
      3 countKDifference 1 3
0
      2 countKDifference 3 2 1 5 4
3
