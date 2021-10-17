NB. https://leetcode.com/contest/biweekly-contest-63/problems/minimum-number-of-moves-to-seat-everyone/

minMovesToSeat =. [: +/ [: | - &: (/:~)

NB. Tests
3 1 5   minMovesToSeat 2 7 4   NB. 4
4 1 5 9 minMovesToSeat 1 3 2 6 NB. 7
2 2 6 6 minMovesToSeat 1 3 2 6 NB. 4
