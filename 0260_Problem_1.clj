; Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

(defn maximum-difference [nums]
  (->> (map - nums (reductions min nums))
       (filter #(> % 0))
       (reduce max -1)))

; Tests

(maximum-difference [7 1 5 4])
(maximum-difference [9 4 3 2])
(maximum-difference [1 5 2 10])
