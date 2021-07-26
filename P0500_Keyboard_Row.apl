⍝ Problem Link: https://leetcode.com/problems/keyboard-row/

findWords ← {
   rows ← 'qwertyuiop' 'asdfghjkl' 'zxcvbnm'
   ⍵/⍨∨/∧/¨r∘.∊⍨⎕C⍵
}
