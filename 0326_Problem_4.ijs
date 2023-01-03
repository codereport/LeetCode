NB. Problem Link: https://leetcode.com/contest/weekly-contest-326/problems/closest-prime-numbers-in-range/

To            =. {{ x+i.1+|x-y }}
Primes        =. #~ 1 p: [
ClosestPrimes =. {{ {{ if. 1<#y do. {.((=<./)|2-/\y)#2<\y else. <_1,_1 end. }} Primes x To y }}

NB. Tests
   10 ClosestPrimes 19
┌─────┐
│11 13│
└─────┘
   4 ClosestPrimes 6
┌─────┐
│_1 _1│
└─────┘
