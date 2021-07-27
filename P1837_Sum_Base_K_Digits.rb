# Problem Link: https://leetcode.com/problems/sum-of-digits-in-base-k/

def sum_base(n, k)
    return n.to_s(k).chars.map( &:to_i ).sum
end
