⍝ Problem Link: https://leetcode.com/contest/weekly-contest-275/problems/count-words-obtained-after-adding-a-letter/
convertible ← {∨/⍵∘(≡⍥(⊂⍤⍋⌷⊢))¨⍺∘,¨⍺~⍨⎕C⎕A}
wordCount   ← (+/,)⍤(∘.convertible)

⍝ Tests
'ant' 'act' 'tack' wordCount 'tack' 'act' 'acti' ⍝ 2
'ab' 'a'           wordCount 'abc' 'abcd'        ⍝ 1
