⍝ Problem Link: https://leetcode.com/contest/weekly-contest-295/problems/rearrange-characters-to-make-target-string/

rearrangeCharacters ← {
   enc ← {+/(⎕C ⎕A)∘.=⍵} ⍝ encode
   a   ← enc ⍺
   b   ← enc ⍵
   ⌊/b÷⍥{⍵/⍨×a}a
}

⍝ Tests
'code'  rearrangeCharacters 'ilovecodingonleetcode' ⍝ 2
'abc'   rearrangeCharacters 'abcba'                 ⍝ 1
'aaaaa' rearrangeCharacters 'abbaccaddaeea'         ⍝ 1
