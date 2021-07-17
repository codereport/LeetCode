⍝ Problem Link: https://leetcode.com/problems/path-crossing/
 
isPathCrossing ← {
   k ← (0 1)(1 0)(0 ¯1)(¯1 0)
   ∨/~≠+\(⊂0 0),k['NESW'⍳⍵]
}
