⍝  Problem Link: https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

minMoveToSeats ← +/∘|-⍥(⊂⍤⍋⌷⊢)

⍝ Tests
3 1 5   minMoveToSeats 2 7 4   ⍝ 4
4 1 5 9 minMoveToSeats 1 3 2 6 ⍝ 7
2 2 6 6 minMoveToSeats 1 3 2 6 ⍝ 4
