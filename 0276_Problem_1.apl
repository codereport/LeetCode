⍝ Problem Link: https://leetcode.com/contest/weekly-contest-276/problems/divide-a-string-into-groups-of-size-k/

divideString ← {
    (x s) ← ⍵
    l ← ≢s
    n ← ⌈l÷⍺
    ↓n ⍺⍴s,x/⍨l-⍨⍺×n
}

⍝  Tests
      3 divideString 'x' 'abcdefghi'
┌───┬───┬───┐
│abc│def│ghi│
└───┴───┴───┘
      
      3 divideString 'x' 'abcdefghij'
┌───┬───┬───┬───┐
│abc│def│ghi│jxx│
└───┴───┴───┴───┘

