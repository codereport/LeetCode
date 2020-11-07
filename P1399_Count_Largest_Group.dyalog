⍝ Problem Link: https://leetcode.com/problems/count-largest-group/

countLargestGroup ← {+/(⌈/=⊢){≢⍵}⌸+/¨10(⊥⍣¯1)¨⍳⍵}
