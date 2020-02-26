// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-176/problems/count-negative-numbers-in-a-sorted-matrix/
// Problem Link (Practice): https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
// Video Link:              https://youtu.be/pDbDtGn1PXk
// Try F# Online:           https://try.fsharp.org/#?code=FDA2FMBcAIGMHsCuA7SA5cBzAhpAlgG7gDO0mATngCbQC80w0TZlNjzAPgHzQAyexSADpy4Koljg+A4dgAOc8Mirsm3aYKEAzPKEjhy0ABRaU0AB7QAtD0sAeaAAYAlKujr+miMkyQAFiBylKha0ABEAKR4YcYIKOhYuIQk0ADaqQCMANwATAC6WWlW2Vb5ec5AA&html=DwCwLgtgNgfAsAKAAQqaApgQwCb2ag4CdMTJcMABwFp0BHAVwEsA3AXgCIBhAewDsw6AdQAqAT0roOSAMb9BAzoIAeYAPThoAbhkhMAJwDOJNgzAAzagA4OeQhqy5EhAEY9sYu6mBq3HvD6asEA&css=Q

let countNegatives grid = 
    grid 
    |> List.reduce List.append
    |> List.filter (fun x -> x < 0)
    |> List.length
