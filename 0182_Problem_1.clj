; code_report Solution
; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-182/problems/find-lucky-integer-in-an-array/
; Problem Link (Practice): https://leetcode.com/problems/find-lucky-integer-in-an-array/

(defn find-lucky [arr]
  (->> arr
       (frequencies)
       (filter #(= (first %) (second %)))
       (keys)
       (reduce max -1)))
       
