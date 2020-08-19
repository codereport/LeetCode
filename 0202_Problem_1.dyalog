⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
⍝ Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

⍝ Note this problem is very similar to MCO (Max Consecutive Ones)

tco ← {3≤⌈/+/¨⊆⍨2|⍵} ⍝ ⍨ is the W (Warbler) combinator
tco ← {3≤⌈/≢¨⊆⍨2|⍵}  ⍝ shorter solution
