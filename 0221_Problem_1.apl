⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-221/problems/determine-if-string-halves-are-alike/
⍝ Problem Link (Practice): https://leetcode.com/problems/determine-if-string-halves-are-alike/

splitInHalf    ← ({2,2÷⍨≢⍵}⍴⊢)
isVowel        ← {⍵∊'AEIOUaeiou'}
halvesAreAlike ← =/+/ isVowel splitInHalf
