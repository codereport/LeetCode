⍝ Problem Link: https://leetcode.com/contest/weekly-contest-283/problems/append-k-integers-with-minimal-sum/

⍝ Solution 1 (only works up to k = ~100)
minimalKSum ← {+/⍺↑⍵~⍨⍳100}

⍝ Solution 2
minimalKSum ← {
   s ← 2÷⍨1(+×⊢)⍺ ⍝ sum
   e ← ⍵/⍨⍺≥⍵     ⍝ excluded nums
   a ← ⍺+⍳≢e      ⍝ added nums
   s+a-⍥(+/)e
}

⍝ Tests
2 minimalKSum 1 4 25 10 15 ⍝ 5
6 minimalKSum 5 6          ⍝ 25
