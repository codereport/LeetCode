⍝ Problem Link: https://leetcode.com/contest/weekly-contest-274/problems/number-of-laser-beams-in-a-bank/

numberOfBeams ← {+/2×/0~⍨+/'1'=⍵}
 
⍝ Tests
numberOfBeams 4 6⍴'011001000000010100001000' ⍝ 8
numberOfBeams 3 3⍴'000111000'                ⍝ 0
numberOfBeams 1 1⍴'1'                        ⍝ 0
