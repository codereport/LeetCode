⍝ Problem Link: https://leetcode.com/problems/count-largest-group/

⍝ Solution from 06-12-2021
countLargestGroup ← {+/(⌈/=⊢){≢⍵}⌸+/¨10(⊥⍣¯1)¨⍳⍵}

⍝ Solution from 07-26-2021
countLargestGroup ← {+/(⌈/=⊢)≢⍤⊢⌸+/¨10⊥⍣¯1¨⍳⍵}
