# Problem Link: https://leetcode.com/problems/consecutive-characters/

def max_power(s)
    return s.chars
            .chunk_while( &:== )
            .map( &:length )
            .max
end
