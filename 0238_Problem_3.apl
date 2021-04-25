⍝ code_report Solution
⍝ Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-238/problems/longest-substring-of-all-vowels-in-order/
⍝ Problem Link (Practice): https://leetcode.com/problems/longest-substring-of-all-vowels-in-order/

longestBeautifulString ← {
    v ← 'aeiou'             ⍝ vowels
    s ← (1,~0 1∊⍨2-⍨/v⍸⍵)⊂⍵ ⍝ substrings
    ⌈/((∧/v∊⊢)×≢)¨s
}
