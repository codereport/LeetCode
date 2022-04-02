⍝ Problem Link: https://leetcode.com/contest/weekly-contest-274/problems/check-if-all-as-appears-before-all-bs/

⍝ Solution 1
checkString ← (∨\≡⊢)'b'∘=

⍝ Solution 2
checkString ← {~∨/'ba'⍷⍵}   ⍝ Dfn
checkString ← 'ba'∘((~∨/)⍷) ⍝ Tacit

⍝ Tests
checkString ¨ 'aaabbb' 'abab' 'bbb' ⍝ 1 0 1
