⍝ Problem Link: https://leetcode.com/problems/find-the-distance-value-between-two-arrays/

findTheDistanceValue ← {
   (a b) ← ⍵
   +/∧/⍺<|a∘.-b
}

⍝ LeetCode Testcases

      2 findTheDistanceValue (4 5 8)(10 9 1 8)
2
      3 findTheDistanceValue (1 4 2 3)(¯4 ¯3 6 10 20 30)
3
