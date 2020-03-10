⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/leetcode-weekly-contest-49/problems/longest-continuous-increasing-subsequence/
⍝ Problem Link (Practice): https://leetcode.com/problems/longest-continuous-increasing-subsequence/

findLengthOfLCIS ← {1+⌈/+/¨(1,2≠/t)⊂t←2</⍵}
