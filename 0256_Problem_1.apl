⍝ Problem Link: https://leetcode.com/contest/weekly-contest-256/problems/minimum-difference-between-highest-and-lowest-of-k-scores/ 

minimumDifference ← {
    x ← ⍺-1
    ⌊/(-x)↓(⊢-x∘⌽)(⊂∘⍒⌷⊢),⍵
}
