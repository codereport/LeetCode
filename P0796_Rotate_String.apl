⍝ Problem Link: https://leetcode.com/problems/rotate-string/
 
 rotateString ← {∨/(⍺∘≡⍵⌽⍨⊢)¨⍳≢⍵}
 
