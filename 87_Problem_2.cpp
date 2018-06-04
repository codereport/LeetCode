// code_report Solution
// https://youtu.be/K_KrVZnagAU

#include <vector>
#include <algorithm>

using namespace std;

int longestMountain (vector<int> A) 
{
   int n = A.size (), ans = 0;
   vector<int> up (n), dn (n);
      
   for (int i = n - 2; i >= 0; --i) if (A[i] > A[i + 1]) dn[i] = dn[i + 1] + 1;
   for (int i = 1; i < n; ++i)      if (A[i] > A[i - 1]) up[i] = up[i - 1] + 1;
   for (int i = 0; i < n; ++i)      if (up[i] && dn[i]) ans = max (ans, up[i] + dn[i] + 1);
      
   return ans;
}
