// code_report Solution
// https://youtu.be/vjRcT-7b0yA

// 1st Solution

#include <vector>

using namespace std;

#define FORI(s,n) for(int i = s; i < n; i++)
#define FORJ(s,n) for(int j = s; j < n; j++)

using ll   = long long;
using vll  = vector<long long>;
using vvll = vector<vll>;

const int MOD = 1000000007;

int knightDialer(int N) {
   if (N == 1) return 10;
   vvll dp(N + 1, vll(10, 0));
   FORI(0, 10) dp[1][i] = 1;
   FORI(2, N + 1) {
      dp[i][0] = dp[i - 1][4] + dp[i - 1][6];
      dp[i][1] = dp[i - 1][6] + dp[i - 1][8];
      dp[i][2] = dp[i - 1][7] + dp[i - 1][9];
      dp[i][3] = dp[i - 1][4] + dp[i - 1][8];
      dp[i][4] = dp[i - 1][3] + dp[i - 1][9] + dp[i - 1][0];
      dp[i][6] = dp[i - 1][1] + dp[i - 1][7] + dp[i - 1][0];
      dp[i][7] = dp[i - 1][2] + dp[i - 1][6];
      dp[i][8] = dp[i - 1][1] + dp[i - 1][3];
      dp[i][9] = dp[i - 1][2] + dp[i - 1][4];
      FORJ(0, 10) dp[i][j] %= MOD;
   }
   ll ans = 0;
   FORI(0, 10) ans += dp[N][i] % MOD;
   return ans % MOD;
}

// 2nd Solution

#include <vector>
#include <algorithm>
#include <numeric>

using namespace std;

vector<vector<int>> moves = { {4, 6}, {6, 8}, {7, 9}, {4, 8}, {3, 9, 0}, 
                              {}, {1, 7, 0}, {2, 6}, {1, 3}, {4, 2} };
int knightDialer(int N) {
   vector<int> dial(10, 1), dial1(10);
   while (--N) {
      for (auto i = 0; i < 10; ++i) {
         auto mod_sum = [&](int s, int i) { return (s + dial[i]) % MOD; };
         dial1[i] = accumulate(begin(moves[i]), end(moves[i]), 0, mod_sum);
      }
      swap(dial, dial1);
   }
   return accumulate(begin(dial), end(dial), 0, [](int s, int n) { return (s + n) % MOD; });
}
