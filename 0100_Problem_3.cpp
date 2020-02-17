// code_report Solution
// https://youtu.be/aVnwaCw-bkU

#include <vector>
#include <numeric>
#include <unordered_set>

// Solution 1: Regular for loops

#define FORI(s,n) for(int i = s; i < n; i++)
#define FORJ(s,n) for(int j = s; j < n; j++)

int subarrayBitwiseORs (vector<int>& A) {
   unordered_set<int> s;
   int n = A.size ();
   int m = numeric_limits<int>::max ();
   FORI (0, n) {
      int x = A[i];
      s.insert (x);
      FORJ (i + 1, n) {
         x |= A[j];
         s.insert (x);
         if (x == m) break;
      }
      if (i == 0) m = x;
   }
   return s.size ();
}

// Solution 2: Modern C++

template<typename InIt, typename T, typename BinaryOp, typename Pred>
T accumulate_fast (InIt first, InIt last, T init, BinaryOp op, Pred p) {
   for (; first != last && !p (init); ++first) {
      init = op (init, *first);
   }
   return init;
}

int subarrayBitwiseORs (vector<int>& A) {
   unordered_set<int> s;

   auto bw_or = [&s](auto i, auto j) mutable { s.insert (i | j); return i | j; };
   auto m     = accumulate (A.begin () + 1, A.end (), A[0], bw_or);
   auto m_hit = [m](auto i) { return i == m; };

   for (int i = 0; i < A.size (); ++i) {
      s.insert (A[i]);
      accumulate_fast (A.begin () + i + 1, A.end (), A[i], bw_or, m_hit);
   }

   return s.size ();
}
