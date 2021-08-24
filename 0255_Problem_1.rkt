; Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

(define (find-gcd nums)
  (gcd (apply min nums)
       (apply max nums)))
