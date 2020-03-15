# code_report Solution
# Problem Link (Contest): https://leetcode.com/contest/weekly-contest-180/problems/lucky-numbers-in-a-matrix/
# Problem Link (Contest): https://leetcode.com/problems/lucky-numbers-in-a-matrix/

def lucky_numbers (matrix)
    return matrix.map( &:min ) & matrix.transpose.map( &:max )
end
