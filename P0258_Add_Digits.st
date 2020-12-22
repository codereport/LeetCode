"Problem Link: https://leetcode.com/problems/add-digits/"

addDigits
  ^ self < 10 ifTrue:  [ self ] 
              ifFalse: [ self digitSum addDigits. ].
