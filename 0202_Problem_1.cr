# code_report Solution
# Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-202/problems/three-consecutive-odds/
# Problem Link (Practice): https://leetcode.com/problems/three-consecutive-odds/

# Note this problem is very similar to MCO (Max Consecutive Ones)

def three_consecutive_odds(arr : Array)
  return arr
    .map(&.odd?)
    .chunk_while { |x, y| x == y }
    .map(&.size)
    .max >= 3
end
