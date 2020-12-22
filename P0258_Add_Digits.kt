// Problem Link: https://leetcode.com/problems/add-digits/

fun Int.sumDigits(): Int {
    return if (this < 10) this else (this % 10) + (this / 10).sumDigits()
}

// bad function name, comes from LeetCode problem
fun Int.addDigits(): Int {
    return if (this < 10) this else this.sumDigits().addDigits()
}
