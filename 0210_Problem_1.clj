;; code_report Solution
;; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-210/problems/maximum-nesting-depth-of-the-parentheses/
;; Problem Link (Practice): https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

;; Original Solution
(defn max-depth [s]
  (->> s 
       (re-seq #"[()]")
       (map #(if (= % "(") 1 -1))
       (reductions +)
       (apply max)))

;; Alternative solution
(defn max-depth [s]
  (->> s
       (keep {\( 1, \) -1})
       (reductions +)
       (apply max)))
