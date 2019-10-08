// code_report Solution
// Problem Link: https://leetcode.com/problems/maximum-number-of-balloons/

def maxNumberOfBalloons(text: String): Int = {
    return "balon".toList.zip(List(1,1,2,2,1)) 
                  .map(p => text.count(_ == p._1) / p._2)
                  .min;
}
