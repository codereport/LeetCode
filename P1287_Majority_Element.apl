⍝ Problem Link: https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array

⍝ Solution 1
findSpecialInteger ← ((((⌈/=⊢)≢¨)⊢⍤/⊃¨)⊆⍨)

⍝ Solution 2 (if there was a modified version of ⍥ that acted like projections in C++ or stencials in Thrust
findSpecialInteger ← {⊃⌈/⍥⊃∘⌽↓,∘≢⌸⍵}
