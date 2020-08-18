# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
# Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

# Note this problem is very similar to MCO (Max Consecutive Ones)

def three_consecutive_odds(arr)
    return arr.map{ |x| x.odd? ? 1 : 0 }
              .chunk_while( &:== )
              .map( &:sum )
              .max >= 3
end
