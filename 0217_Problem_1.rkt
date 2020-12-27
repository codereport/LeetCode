; code_report Solution
; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-217/problems/richest-customer-wealth/
; Problem Link (Practice): https://leetcode.com/problems/richest-customer-wealth/

(require threading)

(define (maximum-wealth accounts)
  (~>> accounts
       (map (λ (x) (apply + x)))
       (apply max)))
