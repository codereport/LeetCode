⍝ Problem Link: https://leetcode.com/contest/biweekly-contest-83/problems/best-poker-hand/

PokerHands ← {
   1=≢∪⍵     : 'Flush'           ⋄
   3≤⌈/≢⍤⊢⌸⍺ : 'Three of a Kind' ⋄
   2≤⌈/≢⍤⊢⌸⍺ : 'Two Pair'        ⋄
               'High Card'
}

⍝ Tests
13 2 3 1 9   PokerHands 'aaaaa' ⍝ Flush
4 4 2 4 4    PokerHands 'daabc' ⍝ Three of a Kind
10 10 2 12 9 PokerHands 'abcad' ⍝ Two Pair
