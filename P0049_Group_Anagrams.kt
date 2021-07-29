// Problem Link: https://leetcode.com/problems/group-anagrams/

fun String.key() = String(toCharArray().apply { sort() })

fun groupAnagrams(strs: Array<String>): List<List<String>> =
    strs.groupBy { it.key() }.toList().map{ it.second }
