⍝ Problem Link: https://leetcode.com/contest/weekly-contest-315/problems/count-number-of-distinct-integers-after-reverse-operations/

countDistinctIntegers ← {≢∪⍵,⍎∘⌽∘⍕¨⍵}

⍝ Tests 
countDistinctIntegers 1 13 10 12 31 ⍝ 6
countDistinctIntegers 2 2 2         ⍝ 1
