# Problem Link: https://leetcode.com/contest/weekly-contest-277/problems/count-elements-with-strictly-smaller-and-greater-elements/
# Permalink: https://mlochbaum.github.io/BQN/try.html#code=Q291bnRFbGVtZW50cyDihpAgK8K0KDzijJzLnCniiKfil4so4oiowrTLmCkoPuKMnMucKQoKIyBUZXN0cwpDb3VudEVsZW1lbnRzIDEx4oC/N+KAvzLigL8xNSAjIDIKQ291bnRFbGVtZW50cyDCrzPigL8z4oC/M+KAvzkwICMgMg==

# Solution 1 from Jan 24
CountElements ← +´<⌜˜∧○(∨´˘)>⌜˜

# Solution 2 from Jan 25
CountElements ← +´(⌊´<⊢)∧⌈´>⊢

# Tests
CountElements 11‿7‿2‿15 # 2
CountElements ¯3‿3‿3‿90 # 2
