// code_report Solution
// Video Link: https://leetcode.com/problems/previous-permutation-with-one-swap/
// Problem Link: https://youtu.be/qwFSeqYH6jc

// Solution 1

vector<int> prevPermOpt1(vector<int>& A) {
    if (is_sorted(A.begin(), A.end())) return A;
    auto i = is_sorted_until(A.rbegin(), A.rend(), greater<>());
    auto j = find_if(A.rbegin(), i, [&](auto e) { return e < *i; });
    auto p = equal_range(i.base(), A.end(), *j);
    iter_swap(i, p.first);
    return A;
}

// Solution 2

template<typename F, typename T>
F first_less_than(F f, F l, T val) {
    auto it = std::lower_bound(f, l, val);
    return it == f ? l : --it;
}

vector<int> prevPermOpt1(vector<int>& A) {
    auto i = is_sorted_until(A.rbegin(), A.rend(), greater<>());
    if (i != A.rend()) {
        auto j = first_less_than(i.base(), A.end(), *i);
        auto p = equal_range(i.base(), A.end(), *j);
        iter_swap(i, p.first);
    }
    return A;
}

// Solution 3 

template<typename F, typename T>
auto first_less_than_range(F f, F l, T val) {
    auto i = std::lower_bound(f, l, val);
    i = i == f ? l : prev(i);
    auto j = i == l ? l : i;
    while (i != f && *prev(i) == *j) --i;
    return make_pair(i, j);
}


vector<int> prevPermOpt1(vector<int>& A) {
    auto i = is_sorted_until(A.rbegin(), A.rend(), greater<>());
    if (i != A.rend()) {
        auto p = first_less_than_range(i.base(), A.end(), *i);
        iter_swap(i, p.first);
    }
    return A;
}
