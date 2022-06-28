⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-81/problems/count-asterisks/

countAsterisks ← {
   p ← ⍵⊆⍨~'|'=⍵ ⍝ split on |
   f ← p⊆⍨2|⍳≢p  ⍝ keep 1st, 3rd, ...
   +/∊'*'=f      ⍝ count *
}

⍝ Tests
countAsterisks 'l|*e*et|c**o|*de|'          ⍝ 2
countAsterisks 'iamprogrammer'              ⍝ 0
countAsterisks 'yo|uar|e**|b|e***au|tifu|l' ⍝ 5
