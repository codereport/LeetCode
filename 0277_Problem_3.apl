⍝ Problem Link: https://leetcode.com/contest/weekly-contest-277/problems/find-all-lonely-numbers-in-the-array/

findLonely ← {⍵/⍨1=⊃+/((⍵-1),⍵,1+⍵)∘.=⊂⍵}
   
⍝ Tests
findLonely 10 6 5 8 ⍝ 10 8
findLonely 1 3 5 3  ⍝ 1 5
