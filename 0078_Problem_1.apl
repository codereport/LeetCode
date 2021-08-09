 ⍝ code_report Solution
 ⍝ Problem Link (Practice): https://leetcode.com/problems/subdomain-visit-count/
 
 ⍝ One-liner
 subdomainVisits ← {{1↓(⍎⊃⍵)∘,¨{⍵,'.',⍺}\⌽('.'∘≠⊆⊢)⊃⌽⍵}¨(' '∘≠⊆⊢)¨⍵}
 
 ⍝ dfn
subdomainVisits ← {
    splitOnSpace ← ' '∘≠⊆⊢
    splitOnDot   ← '.'∘≠⊆⊢
    joins        ← {⍵,'.',⍺}\
    format       ← {1↓ (⍎⊃⍵)∘, ¨ joins ⌽ splitOnDot ⊃⌽⍵ }
    format ¨ splitOnSpace ¨ ⍵
}
 
