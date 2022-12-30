NB. Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

isAlpha       =. {{ 'y e. (97+i.26) { a. }}
replaceDigits =. {{ ({. y), 2 {{ if. isAlpha {. y do. a. {~ (a. i. {. y) + ". {.|. y else. {.|.y end.  }} \ y }}

NB. alternate solution
f=. a. {~ a.&i.@[ + ]       NB. 'a' f 1 gives 'b'
g=. {. , {. f ".@}.         NB. g 'a1' gives 'ab'
h=. [: , _2 g\ ]            NB. ravel results from g on non-overlapping infixes

NB. one line solution using unicode verb with under
v=. [: , _2 ({. , {. +&.(3&u:) ".@}.)\ ]
