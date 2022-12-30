⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-49/problems/longest-continuous-increasing-subsequence/
⍝ Problem Link (Practice): https://leetcode.com/problems/longest-continuous-increasing-subsequence/

findLengthOfLCIS ← {1+⌈/+/¨(1,2≠/t)⊂t←2</⍵} ⍝ Mar 10, 2020 - Original  solution
findLengthOfLCIS ← {⌈/≢¨(1,~2</⍵)⊂⍵}        ⍝ Nov  1, 2020 - Improved  solution
findLengthOfLCIS ← {⌈/≢¨(1,2≥/⍵)⊂⍵}         ⍝ Nov  1, 2020 - Improved  solution
findLengthOfLCIS ← ⌈/(≢¨{1,2≥/⍵}⊂⊢)         ⍝ Nov  1, 2020 - Alternate solution
findLengthOfLCIS ← ⌈/(≢¨(1,2≥/⊢)⊂⊢)         ⍝ Nov  1, 2020 - Alternate solution after watching: https://youtu.be/Enlh5qwwDuY
