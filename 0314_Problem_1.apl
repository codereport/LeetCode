⍝ Problem Link: https://leetcode.com/contest/weekly-contest-314/problems/the-employee-that-worked-on-the-longest-task/

hardestWorker ← {⌊/⍺/⍨(⌈/=⊢)2-⍨/0,⍵}
      
⍝ Tests
0 2 0 1 hardestWorker 3 5 9 15  ⍝ 1
1 3 2 7 hardestWorker 1 7 12 17 ⍝ 3
    0 1 hardestWorker 10 20     ⍝ 0
