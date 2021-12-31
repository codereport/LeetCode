// code_report Solution
// Video Link: https://youtu.be/MDhMwvo6yhQ
// Problem Link: https://leetcode.com/contest/weekly-contest-121/problems/string-without-aaa-or-bbb/

// Solution 1 - original Leetcode submission

string strWithout3a3b(int A, int B) {
    string s;
    bool a_turn = A > B;
    int n = A + B, i = 0;
    while (i < n) {
        if (a_turn) {
            if (A - B > 1) s += "aa", i += 2, A -= 2;
            else           s += 'a',  i += 1, A -= 1;
        } else {
            if (B - A > 1) s += "bb", i += 2, B -= 2;
            else           s += 'b',  i += 1, B -= 1;
        }
        a_turn = !a_turn;
    }
    return s;
}

// Solution 2 - std::generate (doesn't work - but shows the idea)

string strWithout3a3b(int A, int B) {
    string s(A+B, '?');
    generate(begin(s), end(s), 
        [&, C = A > B ? -1 : 1]() mutable {
            char ret = C < 0 ? 'a' : 'b';
            if (abs(A - B) <= 1)  C < 0 ? A-- : B--, C *= -1;
            else if (abs(C) == 2) C < 0 ? A-- : B--, C /= -2;
            else                  C < 0 ? A-- : B--, C *=  2;
            return ret;
        });
    return s;
}

// Solution 3 - string fill construct + 2 x std::replace_if

string strWithout3a3b(int A, int B) {
    string s(A+B, A > B ? 'a' : 'b');
    auto p = A > B ? make_pair('b', B) : make_pair('a', A);
    replace_if(begin(s), end(s), [&p, i = 0](auto e) mutable {
            ++i; 
            if (i % 3 == 0) --p.second; 
            return i % 3 == 0 && p.second >= 0; }, 
            p.first);
    replace_if(begin(s), end(s), [&p, i = -1](auto e) mutable {
            ++i; 
            if (i % 3 == 0) --p.second; 
            return i % 3 == 0 && p.second >= 0; }, 
            p.first);
    return s;
}

// Solution 4 - string fill construct + 1 x replace_if

string strWithout3a3b(int A, int B) {
    string s(A + B, A > B ? 'a' : 'b');
    auto p = A > B ? make_pair('b', B) : make_pair('a', A);
    auto d = p.second - (A + B) / 3;
    replace_if(begin(s), end(s), 
                [&, i = 0](auto e) mutable {
                    ++i;  
                    if (p.second <= 0) return false;
                    if (i % 3 == 0) {
                        --p.second; 
                        return true;
                    } else if ((i+1) % 3 == 0 && d > 0) {
                        --p.second, --d; 
                        return true;
                    } else return false; }, 
                p.first);
    return s;
}

// Solution 5 - string fill construct + replace_n_skip

template<class F, class T>
void replace_n_skip(F f, F l, int n, int skip, const T& val) {
    int c = 0;
    while (f != l && c < n) {
        *f = val, ++c;
        for (int i = 0; i < skip; ++i) {
            ++f; if (f == l) break; 
        }
    }
}

string strWithout3a3b(int A, int B) {
    int n = A + B;
    string s(n, A > B ? 'a' : 'b');
    auto p = A > B ? make_pair('b', B) : make_pair('a', A);
    auto d = p.second - n / 3;
    replace_n_skip(begin(s) + 2, end(s), n, 3, p.first);
    replace_n_skip(begin(s) + 1, end(s), d, 3, p.first);
    return s;
}

// Solution 6 - string fill construct + replace_n_skip (better)

template<class R, class T>
void replace_n_skip(R f, R l, int n, int skip, const T& val) {
    int c = 0;
    while (distance(f, l) > 0 && c < n)
        *f = val, f += skip, ++c;
}

string strWithout3a3b(int A, int B) {
    int n = A + B;
    string s(n, A > B ? 'a' : 'b');
    auto [c, C] = A > B ? make_pair('b', B ) : make_pair('a', A);
    auto d = C - n / 3;
    replace_n_skip(begin(s) + 2, end(s), n, 3, c);
    replace_n_skip(begin(s) + 1, end(s), d, 3, c);
    return s;
}

// Solution 7 - string fill construct + replace_skip

template<class R, class T>
void replace_skip(R f, R l, int skip, const T& val) {
    while (distance(f, l) > 0)
        *f = val, f += skip;
}

string strWithout3a3b(int A, int B) {
    string s(A + B , A > B ? 'a' : 'b');
    auto [c, C] = A > B ? make_pair('b', B ) : make_pair('a', A);
    auto d = 3 * C - (A + B);
    replace_skip(begin(s) + 2, end(s), 3, c);
    replace_skip(begin(s) + 1, begin(s) + 1 + d, 3, c);
    return s;
}
