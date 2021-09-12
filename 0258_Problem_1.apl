⍝ Problem Link: https://leetcode.com/contest/weekly-contest-258/problems/reverse-prefix-of-word/

reversePrefix ← {⍵(⌽⍤↑,↓)⍨⊃⍸⍺=⍵}

⍝ LeetCode Tests

      'd' reversePrefix 'abcdefd'
dcbaefd
      'z' reversePrefix 'xyxzxe'
zxyxxe
      'z' reversePrefix 'abcd'
abcd

⍝ Fully Tacit (Point Free) Solution ... so god damn beautiful!

reversePrefix ← (⊃∘⍸=)(⌽⍤↑,↓)⊢

⍝ Praise the LORD!!! The dyadic hook is the BLACKBIRD!!! CAN YOU BELIEVE IT!!!!!!

reversePrefix ← ⊃⍤⍸⍤=(⌽⍤↑,↓)⊢
