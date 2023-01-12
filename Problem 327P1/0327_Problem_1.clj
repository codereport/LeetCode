; Problem Link: https://leetcode.com/problems/maximum-count-of-positive-integer-and-negative-integer/

(defn maximum-count [nums]
    (max (count (filter neg? nums))
         (count (filter pos? nums))))

; Tests
(println (maximum-count [-2,-1,-1,1,2,3]))   ; 3
(println (maximum-count [-3,-2,-1,0,0,1,2])) ; 3
(println (maximum-count [5,20,66,1314]))     ; 4
