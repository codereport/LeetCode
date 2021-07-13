⍝ Problem Link: https://leetcode.com/contest/weekly-contest-249/problems/unique-length-3-palindromic-subsequences/

countPalindromicSubsequence ← {≢((⌽≡⊢)¨⊢⍤/⊢)∪(⍵⌷⍨⊂∘⊢)¨((∧/2</⊢)¨⊢⍤/⊢)∪⍸(3∘/⍴⍳)≢⍵}
