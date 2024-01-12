# Problem Link: https://leetcode.com/problems/check-if-a-string-is-an-acronym-of-words/

IsAcronym ← ≡⟜(⊑¨)    # Point Free
IsAcronym ← {𝕨=⟜⊑¨𝕩} # Explicit

# Tests
"abc"    IsAcronym ⟨"alice","bob","charlie"⟩
"a"      IsAcronym ⟨"an","apple"⟩
"ngguoy" IsAcronym ⟨"never","gonna","give","up","on","you"⟩
