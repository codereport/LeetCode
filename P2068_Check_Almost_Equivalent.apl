⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-65/problems/check-whether-two-strings-are-almost-equivalent/

checkAlmostEquivalent ← (∧/3≥|)⍤-⍥(+/(⎕C⎕A)∘.=⊢)
 
⍝ Tests

'bccb'      checkAlmostEquivalent 'aaaa'      ⍝ 0
'abcdeef'   checkAlmostEquivalent 'abaaacc'   ⍝ 1
'cccddabba' checkAlmostEquivalent 'babababab' ⍝ 1
