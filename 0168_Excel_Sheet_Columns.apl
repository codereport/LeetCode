⍝ Problem Link: https://leetcode.com/problems/excel-sheet-column-title/

⍝ Solution 1 (not comprehensive, fails 26, 701, etc)
convertToTitle ← {⎕A[26(⊥⍣¯1)⍵]}

⍝ Solution 2 (comprehensive, but relies on adic)
⍝ https://dfns.dyalog.com/n_adic.htm
)load dfns
convertToTitle ← ⎕A∘adic
