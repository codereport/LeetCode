⍝ Problem Link: https://leetcode.com/problems/k-items-with-the-maximum-sum/

kItemsWithMaximumSum ← {+/⍺↑⍵/1 0 ¯1}
      
⍝ Tests
 2 kItemsWithMaximumSum 3 2 0 ⍝ 2
 4 kItemsWithMaximumSum 3 2 0 ⍝ 3
13 kItemsWithMaximumSum 6 6 6 ⍝ 5
