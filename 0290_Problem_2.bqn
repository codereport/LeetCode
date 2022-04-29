# Problem Link: https://leetcode.com/contest/weekly-contest-290/problems/count-lattice-points-inside-a-circle/

Dist ← √·+´⋆⟜2∘-
LatticePoints ← {
  x‿y‿r ← 𝕩
  i ← ↕2×1+r         # iota range
  p ← ⥊x⋈⌜○(i+-⟜r)y # points
  p/˜r≥x‿y⊸Dist¨p
}
CountLatticePoints ← {≠⍷∾LatticePoints¨𝕩}

# Tests
CountLatticePoints ⟨2‿2‿1⟩       # 5
CountLatticePoints ⟨2‿2‿2,3‿4‿1⟩ # 16
