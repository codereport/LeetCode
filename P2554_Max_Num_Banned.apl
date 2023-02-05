⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-97/problems/maximum-number-of-integers-to-choose-from-a-range-i/

MaxCount ← {
   (banned n maxSum) ← ⍵
   +/maxSum>+\banned~⍨⍳n
}

⍝ Tests
MaxCount (1 6 5) 5 6 ⍝ 2
MaxCount (⍳7) 8 1    ⍝ 0
MaxCount (11) 7 50   ⍝ 7
