⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-234/problems/number-of-different-integers-in-a-string/
⍝ Problem Link (Practice): https://leetcode.com/problems/number-of-different-integers-in-a-string/

numDifferentIntegers ← {≢∪⍎¨(∊∘⎕D⊆⊢)⍵}
