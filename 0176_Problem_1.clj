; code_report Solution
; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
; Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

(defn count-negatives [grid] 
  (->> grid
       flatten
       (filter neg-int?)
       count))
                                  
