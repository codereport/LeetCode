⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-77/problems/count-prefixes-of-a-given-string/

countPrefixes ← +/⊣∊,\⍤⊢

⍝ Tests
'a' 'b' 'c' 'ab' 'bc' 'abc' countPrefixes 'abc' ⍝ 3
'a' 'a' countPrefixes 'aa'                      ⍝ 2
