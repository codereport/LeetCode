⍝ Problem Link: https://leetcode.com/contest/weekly-contest-250/problems/maximum-number-of-words-you-can-type/

canBeTypedWords ← {+/∧/¨~⍺∘∊¨' '(≠⊆⊢)⍵}
