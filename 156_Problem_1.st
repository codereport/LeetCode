"code_report Solution"
"Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-156/problems/unique-number-of-occurrences/"
"Problem Link (Practice): https://leetcode.com/problems/unique-number-of-occurrences/"

SequenceableCollection >> frequencies [
   ^ self asBag valuesAndCounts.
]

SequenceableCollection >> isUnique [
   ^ self frequencies values max <= 1.
]

SequenceableCollection >> uniqueOccurrences [
   ^ self frequencies
          values 
          isUnique.
]
