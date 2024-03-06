⍝ Original Solutions from:

TODO: fill in

⍝ Brian Becker Solution:

Sum ← {⍸⊃⍵∨.⍴¯3 ¯5↑¨1}

⍝ Conor's Solution from 2024-03-06

Sum ← +/∘⍸0=(×⌿3 5∘.|⍳) ⍝ Tacit
Sum ← {+/⍸0=×⌿3 5∘.|⍳⍵} ⍝ Explicit
