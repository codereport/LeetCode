⍝ Problem Link: https://leetcode.com/contest/weekly-contest-322/problems/circular-sentence/

⍝ My original Solution
isCircularSentence ← {(⊢≡1 0 ⍴⍨≢)2=/1⌽∊(⊃,⊃∘⌽)¨' '(≠⊆⊢)⍵}

⍝ Adám Brudzewsky's Solution
isCircularSentence ← (⊢/¨≡1⌽⊃¨)' '∘≠⊆⊢

⍝ Tests
isCircularSentence 'leetcode exercises sound delightful' ⍝ 1
isCircularSentence 'eetcode'                             ⍝ 1
isCircularSentence 'Leetcode is cool'                    ⍝ 0
