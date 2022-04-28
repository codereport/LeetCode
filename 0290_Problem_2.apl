⍝ Problem Link: https://leetcode.com/contest/weekly-contest-290/problems/count-lattice-points-inside-a-circle/

dist ← {(÷2)*⍨+/2*⍨⍺-⍵}

latticePoints ← {
    (x y r) ← ⍵
    i ← ¯1+⍳2×1+r      ⍝ iota rng
    p ← ,x∘.,⍥(i+-∘r)y ⍝ points
    p/⍨r≥(x y)∘dist¨p
}

countLatticePoints ← {≢∪⊃,/latticePoints¨⊆⍵}

⍝ Tests
countLatticePoints (2 2 1)        ⍝ 5
countLatticePoints (2 2 2)(3 4 1) ⍝ 16
