NB. Problem Link: https://leetcode.com/problems/first-missing-positive/

NB. First Solution
findMissingPositive =. [:{.[:(1+[:I.(1+i.&#)~:])(1+#){.[:/:~(#~0&<)

NB. Second Solution
findMissingPositive =. 1+[:{.[:I.[:-.(e.~(1+[:(i.)1+#))

NB. LeetCode Tests
findMissingPositive each 1 2 0;3 4 _1 1;7 8 9 11 12
