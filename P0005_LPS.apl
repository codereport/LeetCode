⍝ Problem Link: https://leetcode.com/problems/longest-palindromic-substring/

longestPalindrome ← {
   s ← ⊃,/,\¨⌽,\⍵  ⍝ substrings
   p ← s/⍨(⌽≡⊢)¨s  ⍝ palindromes
   ⊃p/⍨(⌈/=⊢)≢¨p   ⍝ longest palindrome
}
