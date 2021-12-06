NB. Problem Link: https://leetcode.com/contest/weekly-contest-269/problems/find-target-indices-after-sorting-array/

NB. 3 Different Solutions
targetIndices =. I.@(=/:~)
targetIndices =. (+/@:>)+([:i.+/@:=)
targetIndices =. >(+i.)&:(+/)=

NB. Tests
2 targetIndices 1 2 5 2 3 NB. 1 2
3 targetIndices 1 2 5 2 3 NB. 3
5 targetIndices 1 2 5 2 3 NB. 4
4 targetIndices 1 2 5 2 3 NB. 
