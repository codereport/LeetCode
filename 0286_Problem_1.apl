⍝ Problem Link: https://leetcode.com/contest/weekly-contest-286/problems/find-the-difference-of-two-arrays/

findDifference ← ~,⍥⊂~⍨
      
⍝ Tests
      1 2 3 findDifference 2 4 6
┌───┬───┐
│1 3│4 6│
└───┴───┘
      1 2 3 3 findDifference 1 1 2 2
┌───┬┐
│3 3││
└───┴┘
