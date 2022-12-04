⍝ Problem Link: https://leetcode.com/contest/weekly-contest-322/problems/circular-sentence/

isCircularSentence ← {(⊢≡1 0 ⍴⍨≢)2=/1⌽∊(⊃,⊃∘⌽)¨' '(≠⊆⊢)⍵}

⍝ Tests
isCircularSentence 'leetcode exercises sound delightful' ⍝ 1
isCircularSentence 'eetcode'                             ⍝ 1
isCircularSentence 'Leetcode is cool'                    ⍝ 0
