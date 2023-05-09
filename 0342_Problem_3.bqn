# Problem Link: https://leetcode.com/problems/sliding-subarray-beauty/description/

GetSubarrayBeauty ← {
  k‿x‿nums ← 𝕩
  {0⌊(¯1+x)⊑∧𝕩}˘k↕nums
}

# Tests
GetSubarrayBeauty 3‿2‿⟨1,¯1,¯3,¯2,3⟩   # ⟨ ¯1 ¯2 ¯2 ⟩
GetSubarrayBeauty 2‿2‿⟨¯1,¯2,¯3,¯4,¯5⟩ # ⟨ ¯1 ¯2 ¯3 ¯4 ⟩
GetSubarrayBeauty 2‿1‿⟨¯3,1,2,¯3,0,¯3⟩ # ⟨ ¯3 0 ¯3 ¯3 ¯3 ⟩
