⍝ Problem link: https://leetcode.com/contest/biweekly-contest-52/problems/sorting-the-sentence/

 sortSentence←{
     w ← ' '(≠⊆⊢)⍵       ⍝ words
     i ← {⍎⊃⌽⍵}¨w        ⍝ indices
     s ← (¯1∘↓¨w)[i⍳⍳≢i] ⍝ sorted words
     ⊃{⍺,' ',⍵}/s        ⍝ joined words
 }
 
