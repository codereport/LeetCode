⍝ https://leetcode.com/contest/weekly-contest-243/problems/check-if-word-equals-summation-of-two-words/

isSumEqual {(97-⍨⎕UCS⍺)≡⊃+/97-⍨⎕UCS¨⍵}
