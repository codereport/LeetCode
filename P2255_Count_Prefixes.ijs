NB. Problem Link: https://leetcode.com/contest/biweekly-contest-77/problems/count-prefixes-of-a-given-string/

countPrefixes =. +/@e.<\

NB. Tests
((,'a');(,'b');(,'c');'ab';'bc';'abc') countPrefixes 'abc' NB. 3
((,'a');(,'a')) countPrefixes 'aa'                         NB. 2
