; Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

(require '[clojure.math.numeric-tower :as math])

(defn find-gcd [nums] 
  (math.gcd (apply min nums) 
            (apply max nums)))
