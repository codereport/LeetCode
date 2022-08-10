# Problem Link: https://leetcode.com/contest/weekly-contest-299/problems/check-if-matrix-is-x-matrix/

import numpy as np

def check_matrix(grid):
    i = np.identity(len(grid), int)
    return np.array_equal(np.minimum(grid, 1), np.maximum(i, np.flip(i, axis = 1)))

check_matrix(np.matrix('2 0 0 1; 0 3 1 0; 0 5 2 0; 4 0 0 2')) # True
check_matrix(np.matrix('5 7 0; 0 3 1; 0 5 0'))                # False
