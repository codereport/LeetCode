⍝ Problem Link: https://leetcode.com/contest/weekly-contest-278/problems/keep-multiplying-found-values-by-two/

findFinalValue ← {⊃⍵~⍨⍺×1,2*⍳10}

⍝ Tests
3 findFinalValue 5 3 6 1 12 ⍝ 24
4 findFinalValue 2 7 9      ⍝ 4
      
