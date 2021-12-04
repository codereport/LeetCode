# Problem Link: https://leetcode.com/contest/weekly-contest-269/problems/find-target-indices-after-sorting-array/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=VGFyZ2V0SW5kaWNlcyDihpAgL+KKoz3iiKfiiJjiiqIKCiMgVGVzdHMKMiBUYXJnZXRJbmRpY2VzIDHigL8y4oC/NeKAvzLigL8zICMg4p+oIDEgMiDin6kKMyBUYXJnZXRJbmRpY2VzIDHigL8y4oC/NeKAvzLigL8zICMg4p+oIDMg4p+pCjQgVGFyZ2V0SW5kaWNlcyAx4oC/MuKAvzXigL8y4oC/MyAjIOKfqOKfqQo1IFRhcmdldEluZGljZXMgMeKAvzLigL814oC/MuKAvzMgIyDin6ggNCDin6k=

TargetIndices ← /⊣=∧∘⊢

# Tests
2 TargetIndices 1‿2‿5‿2‿3 # ⟨ 1 2 ⟩
3 TargetIndices 1‿2‿5‿2‿3 # ⟨ 3 ⟩
4 TargetIndices 1‿2‿5‿2‿3 # ⟨⟩
5 TargetIndices 1‿2‿5‿2‿3 # ⟨ 4 ⟩
