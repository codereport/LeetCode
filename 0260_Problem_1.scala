// Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

def maximumDifference(nums: Array[Int]): Int =
    nums.scanLeft(Int.MaxValue)(_ min _)
        .tail
        .zip(nums)
        .map(x => x._2 - x._1)
        .filter(_ != 0)
        .foldLeft(-1)(_ max _)
