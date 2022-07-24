⍝ Problem Link: https://leetcode.com/contest/weekly-contest-303/problems/equal-row-and-column-pairs/

EqualPairs ← {+/,(↓∘⍉∘.≡↓)⍵}
      
⍝ Tests
EqualPairs 3 3⍴3,2,1,1,7,6,2,7,7               ⍝ 1
EqualPairs 4 4⍴3,1,2,2,1,4,4,5,2,4,2,2,2,4,2,2 ⍝ 3
