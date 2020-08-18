;; code_report Solution
;; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
;; Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

;; Note this problem is very similar to MCO (Max Consecutive Ones)

(defn three-consecutive-odds [arr]
  (->> arr
       (partition-by odd?)
       (filter #(odd? (first %)))
       (map count)
       (apply max)
       (<= 3)))
