NB. Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

isAlpha       =. {{ 'y e. (97+i.26) { a. }}
replaceDigits =. {{ ({. y), 2 {{ if. isAlpha {. y do. a. {~ (a. i. {. y) + ". {.|. y else. {.|.y end.  }} \ y }}

NB. Solution 2 (a pair at a time)
shift0=: 0&".@{: +&.(a:`(a.&i.)) {.
replaceDigits1=: [: ; _2&(<@(({. , shift0)^:(2 = #))\)

NB. Solution 3 (whole array)
shift1=: +&.:(a:`(a.&i.))           NB. uses semidual available from >= J9.02
replaceDigits2=: $ {. ,@((0 ". }."1) (,@] ,. shift1) {."1)@(_2 ]\ ])
