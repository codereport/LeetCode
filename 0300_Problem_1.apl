⍝ Problem Link: https://leetcode.com/contest/weekly-contest-300/problems/decode-the-message/

decodeMessage ← {(⎕C⎕A,' ')[⍺⍳⍨' '~⍨⍵/⍨≠⍵]}
      
⍝ Tests
'vkbs bs t suepuv' decodeMessage 'the quick brown fox jumps over the lazy dog'    ⍝ this is a secret
'zwx hnfx lqantp mnoeius ycgk vcnjrdb' decodeMessage 'eljuxhpwnyrdgtqkviszcfmabo' ⍝ the five boxing wizards jump quickly
