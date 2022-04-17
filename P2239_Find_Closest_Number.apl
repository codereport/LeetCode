⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-76/problems/find-closest-number-to-zero/

findClosest ← ⌈/(⌊/=⊢)∘|⊢⍤/⊢

⍝ Tests
findClosest ¯4 ¯2 1 4 8 ⍝ 1
findClosest 2 ¯1 1      ⍝ 1
findClosest 2 ¯1        ⍝ ¯1
