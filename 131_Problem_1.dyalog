⍝ code_report Solution
⍝ Video Link: https://youtu.be/ekdNNn3vOqQ
⍝ Problem Link: https://leetcode.com/contest/weekly-contest-131/problems/remove-outermost-parentheses/

⍝ One-liner
removeOuterParentheses ← {⊃,/{1↓¯1↓⍵}¨(0=0,¯1↓+\(⊣-~)'('=⍵)⊂⍵}

⍝ dfns
removeOuterParentheses ← {
    scan     ← +\(⊣-~)'('=⍵
    mask     ← 0=0,¯1↓scan
    segments ← mask⊂⍵
    ⊃,/{1↓¯1↓⍵}¨segments
}
