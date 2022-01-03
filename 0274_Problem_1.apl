⍝ Problem Link: https://leetcode.com/contest/weekly-contest-274/problems/check-if-all-as-appears-before-all-bs/

checkString ← (∨\≡⊢)'b'∘=
      
⍝ Tests
checkString ¨ 'aaabbb' 'abab' 'bbb' ⍝ 1 0 1
