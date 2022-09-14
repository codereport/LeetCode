# Problem Link: https://leetcode.com/contest/weekly-contest-299/problems/check-if-matrix-is-x-matrix/

# Using diag
check_matrix <- function(grid) {
   i = diag(nrow(grid))
   all(pmin(grid, 1) == pmax(i, apply(i, 2, rev)))
}

# Without using diag
check_matrix <- function(grid) {
   n = nrow(grid)
   i = outer(1:n, 1:n, "==")
   all(pmin(grid, 1) == pmax(i, apply(i, 2, rev)))
}

# Tests
print(check_matrix(matrix(c(2, 0, 0, 1, 0, 3, 1, 0, 0, 5, 2, 0, 4, 0, 0, 2), nrow = 4, byrow = TRUE))) # TRUE
print(check_matrix(matrix(c(5, 7, 0, 0, 3, 1, 0, 5, 0),                      nrow = 3, byrow = TRUE))) # FALSE
