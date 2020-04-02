; code_report Solution
; Problem Link (Practice): https://leetcode.com/problems/transpose-matrix/

(ns exercises.core
  (:require [clojure.core.matrix :as m]))

(defn transpose [A]
  (m/transpose A))
