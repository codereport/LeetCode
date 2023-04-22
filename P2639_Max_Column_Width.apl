⍝ Problem Link: https://leetcode.com/problems/find-the-width-of-columns-of-a-grid/

FindColumnWidth ← ⌈⌿≢∘⍕¨

⍝ Tests
FindColumnWidth 3 1⍴1 22 333               ⍝ 3
FindColumnWidth 3 3⍴¯15 1 3 15 7 12 5 6 ¯2 ⍝ 3 1 2
      
