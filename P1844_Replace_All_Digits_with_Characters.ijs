NB. Problem Link: https://leetcode.com/contest/biweekly-contest-51/problems/replace-all-digits-with-characters/

isAlpha       =: {{ y e. (97+i.26) { a. }}
replaceDigits =: {{ ({. y), 2 {{ if. isAlpha {. y do. a. {~ (a. i. {. y) + ". {.|. y else. {.|.y end.  }} \ y }}

NB. Solution 2 (a pair at a time)
shift=: +&.:(a:`(a.&i.))           NB. uses semidual available from >= J9.02
NB. eg: 0 1 2 1 shift 'acdf'
replaceDigits2=: [: ; _2&(<@(({. , 0&".@{: shift {.)^:(2 = #))\)

NB. Solution 3 (whole array)
replaceDigits3=: $ {. ,@((0 ". }."1) (,@] ,. shift) {."1)@(_2 ]\ ])

NB. Solution 4 (refactor 3 - J works with more naturally with rows than with columns)
replaceDigits4=: $ {. ,@(([ ,. shift~) 0 ". ,.)/@|:@(_2 ]\ ])
