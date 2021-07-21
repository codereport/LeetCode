# Problem Link: https://leetcode.com/problems/can-place-flowers/

def can_place_flowers(input, n)
    flowerbed = ([0] + input).append(0)
    flowerbed.map { | x | 1 - x }
             .chunk_while( &:== )
             .map { | x | [0, (x.sum - 1) / 2].max }
             .sum >= n
end
