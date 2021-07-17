⍝ https://leetcode.com/problems/longest-substring-without-repeating-characters/

⍝ Solution 1
lengthOfLongestSubstring ← {⌈/(≢×(∪≡⊢))¨⊃,/,\¨⌽¨,\⍵}

⍝ Solution 2
lengthOfLongestSubstring ← {⌈/{+/∧\≠⌽⍵}¨,\⍵}
