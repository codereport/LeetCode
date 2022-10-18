⍝ Problem Link: https://leetcode.com/contest/weekly-contest-254/problems/number-of-strings-that-appear-as-substrings-in-word/

 numOfStrings ← {+/∨/↑⍺∘.⍷⊂⍵}
 
⍝ LeetCode tests
'a' 'abc' 'bc' 'd' numOfStrings 'abc'    ⍝ 3
       'a' 'b' 'c' numOfStrings 'aaabbb' ⍝ 2
       'a' 'a' 'a' numOfStrings 'ab'     ⍝ 3
