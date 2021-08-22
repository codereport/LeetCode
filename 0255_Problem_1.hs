-- Problem Link: https://leetcode.com/contest/weekly-contest-255/problems/find-greatest-common-divisor-of-array/

import Control.Monad (liftM2)

findGCD = liftM2 gcd minimum maximum
