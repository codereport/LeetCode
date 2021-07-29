⍝ Problem Link: https://leetcode.com/problems/group-anagrams/

groupAnagrams ← {
   m ← {⍵∊⍨⎕C⎕A}¨⍵      ⍝ masks
   i ← ⊃∘⌽¨↓{⍺⍵}⌸m      ⍝ index groups
   (⍵/⍨(≢⍵)∘↑∘(⍸⍣¯1))¨i ⍝ inverse where filter
}
