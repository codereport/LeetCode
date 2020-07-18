# code_report Solution
# Problem Link (Practice): https://leetcode.com/problems/number-of-substrings-with-only-1s/

def num_sub(s)
    return s.chars
            .chunk_while( &:== )
            .select{ |x| x[0] == '1' }
            .map( &:size )
            .map{ |x| (x * (x+1)) / 2 }
            .sum % 1000000007
end
