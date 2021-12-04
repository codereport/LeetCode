⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-66/problems/count-common-words-with-one-occurrence/

countWords ← ≢∩⍥((1=(≢⍤⊢⌸⊢))⊢⍤/∪)

⍝ Tests
'leetcode' 'is' 'amazing' 'as' 'is' countWords 'amazing' 'leetcode' 'is' ⍝ 2
'a' 'ab' countWords 'a' 'a' 'a' 'ab' ⍝ 1
