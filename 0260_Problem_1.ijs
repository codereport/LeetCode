NB. Problem Link: https://leetcode.com/contest/weekly-contest-260/problems/maximum-difference-between-increasing-elements/

NB. Original Solution
maximumDifference =. {{ >./ ;(}.&.>~ |.&i.&#) (-&#<\;) -/~ y }}

NB. Tacit (suboptimal IMO)
maximumDifference =. [: >./ [: ; [: (}.&.>~ |.&i.&#) [: (-&# <\ ;) -/~

NB. Much Better Solution (after I thought about it a bit more)

maximumDifference =. [:>./(-~>./\&.|.)

NB. Full solution
maximumDifference =. [: >./ _1 , 0 -.~ (-~ >./\&.|.)

NB. Best and Full Solution
maximumDifference =. [: >./ _1 , 0 -.~ (- <./\)
