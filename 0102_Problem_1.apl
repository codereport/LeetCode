⍝ code_report Solution
⍝ Problem Link: https://leetcode.com/problems/sort-array-by-parity/
⍝ Video LInk:   https://youtu.be/FgzZ4ShshPs

sortArrayByParity ← {⍵[⍸~b],⍵[⍸b←2|⍵]}
