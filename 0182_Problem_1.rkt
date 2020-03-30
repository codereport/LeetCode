; code_report Solution
; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-182/problems/find-lucky-integer-in-an-array/
; Problem Link (Practice): https://leetcode.com/problems/find-lucky-integer-in-an-array/

(require threading)
(require list-utils)

(define (find-lucky arr)
  (~> arr
      (frequencies)
      (dict-map (lambda (k v) (if (= k v) k 0)))
      (foldl max -1 _)))
      
