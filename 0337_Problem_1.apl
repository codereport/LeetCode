⍝ Problem Link: https://leetcode.com/contest/weekly-contest-337/problems/number-of-even-and-odd-bits/

EvenOddBit ← {
   b ← 2(⊥⍣¯1)⍵
   m ← 1 0⍴⍨≢b
   (b×m),⍥(+/)b×~m
}
