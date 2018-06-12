// code_report Solution
// https://youtu.be/JRecqHkvGs4

#include <vector>

using namespace std;

using vi = vector<int>;
using vvi = vector<vi>;

int dfs (int i, const vi& q, const vvi& g, vi& ans)
{
   if (ans[i] >= 0) return ans[i];
   ans[i] = i;
   for (auto j : g[i]) if (q[dfs (j, q, g, ans)] < q[ans[i]]) ans[i] = ans[j];
   return ans[i];
}

vector<int> loudAndRich (const vvi& richer, const vi& quiet)
{
   vvi g (quiet.size ());
   for (auto v : richer) g[v[1]].push_back (v[0]);
   vi ans (quiet.size (), -1);
   for (auto i = 0; i < quiet.size (); ++i) dfs (i, quiet, g, ans);
   return ans;
}
