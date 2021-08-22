⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-59/problems/minimum-time-to-type-word-using-special-typewriter/

minTimeToType ← {(≢⍵)++/2((26∘-∘|-)⌊|⍤-)/(⎕C⎕A)⍳'a',⍵}

⍝ Leetcode Tests
     
      minTimeToType¨'abc' 'bza' 'zjpc'
5 7 34
