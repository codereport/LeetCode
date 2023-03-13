; Problem Link: https://leetcode.com/contest/weekly-contest-336/problems/rearrange-array-to-maximize-prefix-score/
; JDoodle Link: jdoodle.com/ia/FbF

(defn max-score [nums]
    (->> nums 
         sort
         reverse
         (reductions +)
         (filter pos?)
         count))

; Tests
(println (max-score [2 -1 0 1 -3 3 -3])) ; 6
(println (max-score [-2 -3 0]))          ; 0
