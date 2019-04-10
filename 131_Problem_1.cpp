// code_report Solution
// Video Link: https://youtu.be/ekdNNn3vOqQ
// Problem Link: https://leetcode.com/contest/weekly-contest-131/problems/remove-outermost-parentheses/

// Probably don't code like this :p

string removeOuterParentheses(string S) {
   vector<int> a(S.size()), b(S.size());
   transform(S.begin(), S.end(), a.begin(), 
      [](auto c) { return c == '(' ? 1 : -1; });
   partial_sum(a.begin(), a.end(), b.begin());
   return accumulate(b.begin(), b.end(), string(""),
      [&S, t = string(), i = 0](auto s, auto e) mutable {
         e == 0 ? s += t.substr(1, t.size() - 1), t = "" : t += S[i]; ++i;
         return s;
      });
}
