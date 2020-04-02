; code_report Solution
; Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-92/problems/transpose-matrix/
; Problem Link (Practice): https://leetcode.com/problems/transpose-matrix/

(ns exercises.core
  (:require [clojure.core.matrix :as m]))

(defn transpose [A]
  (m/transpose A))
