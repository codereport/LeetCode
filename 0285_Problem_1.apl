⍝ Problem Link: https://leetcode.com/contest/weekly-contest-285/problems/count-hills-and-valleys-in-an-array/

unique ← (1,2≠/⊢)⊢⍤/⊢ ⍝ C++ meaning

countHillValley ← {
    w  ← 3,/unique ⍵   ⍝ windows
    m  ← 2∘⊃¨w         ⍝ middle elements
    hv ← +/¨w(<¨,>¨)m  ⍝ hills and valleys (2s)
    +/2=hv
}

⍝ Tests
countHillValley 2 4 1 1 6 5 ⍝ 3
countHillValley 6 6 5 5 4 1 ⍝ 0
