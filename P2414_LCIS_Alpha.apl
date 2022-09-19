⍝ Problem Link: https://leetcode.com/contest/weekly-contest-311/problems/length-of-the-longest-alphabetical-continuous-substring

longestContinuousSubstring ← {⌈/≢¨⍵⊆⍨1,1=2-⍨/⎕UCS⍵}

⍝ Tests
longestContinuousSubstring 'abacaba' ⍝ 2
longestContinuousSubstring 'abcde'   ⍝ 5
