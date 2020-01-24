// code_report Solution
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-168/problems/find-numbers-with-even-number-of-digits/
// Problem Link (Practice): https://leetcode.com/problems/find-numbers-with-even-number-of-digits/
// Video Solution:          https://youtu.be/gZLZPrgqw2A

public int findNumbers(int[] nums) {
     return (int) Arrays.stream(nums)
                        .map(e -> String.valueOf(e).length())
                        .filter(e -> e % 2 == 0)
                        .count();
}
