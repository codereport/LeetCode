# Problem Link: https://leetcode.com/contest/weekly-contest-299/problems/check-if-matrix-is-x-matrix/

check_matrix <- function(grid) {
   n = nrow(grid)
   i = diag(n)
   return(all(pmin(grid, 1) == pmax(i, i[n:1,])))
}

# Tests
print(check_matrix(matrix(c(2, 0, 0, 1, 0, 3, 1, 0, 0, 5, 2, 0, 4, 0, 0, 2), nrow = 4, byrow = TRUE))) # TRUE
print(check_matrix(matrix(c(5, 7, 0, 0, 3, 1, 0, 5, 0),                      nrow = 3, byrow = TRUE))) # FALSE
