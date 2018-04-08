// code_report Solution
// 

#include <vector>
#include <numeric>
#include <algorithm>

using namespace std;

double largestSumOfAverages (vector<int>& a, int k) {

   int n = a.size ();
   vector<double> sum = { 0.0 };
   partial_sum (a.begin (), a.end (), back_inserter (sum));

   vector<vector<double>> dp (n + 1, vector<double> (k + 1, -1));
   dp[0][0] = 0;

   for (int i = 1; i <= n; i++)
      for (int d = 1; d <= k; d++)
         for (int j = 0; j < i; j++)
            if (dp[j][d - 1] != -1)
               dp[i][d] = max (dp[i][d], dp[j][d - 1] + (sum[i] - sum[j]) / (i - j));

   return dp[n][k];
}
