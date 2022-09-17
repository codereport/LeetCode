# Problem Link: https://leetcode.com/contest/weekly-contest-299/problems/check-if-matrix-is-x-matrix/

using LinearAlgebra # I

# Using I (for Identity)
function checkmatrix(grid)
  i = size(grid, 1) |> I |> Matrix # identity matrix
  min.(grid, 1) == max.(i, reverse(i, dims=1))
end

# Without using I
function checkmatrix(grid)
  n = size(grid, 1)
  i = 1:n .== 1:n |> transpose
  min.(grid, 1) == max.(i, reverse(i, dims=1))
end

# Tests
checkmatrix([2 0 0 1; 0 3 1 0; 0 5 2 0; 4 0 0 2]) # true
checkmatrix([5 7 0; 0 3 1; 0 5 0])                # false
