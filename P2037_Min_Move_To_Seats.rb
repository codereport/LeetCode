# Problem Link: https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

def min_moves_to_seat(a, b)
    return a.sort
            .zip(b.sort)
            .map{ |a, b| (b - a).abs }
            .sum
end
