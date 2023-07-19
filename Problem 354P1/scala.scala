// Problem Link: https://leetcode.com/problems/sum-of-squares-of-special-elements/

def sumOfSquares(nums: Array[Int]): Int = {
    return nums.zipWithIndex
                .filter{ case(_, i) => nums.length % (i + 1) == 0 }
                .map{ case(x, _) => x * x }
                .sum
}
