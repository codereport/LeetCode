// code_report Solution
// https://youtu.be/BlT6VCE6lGc

#include <vector>

int numTilings (int N) {

	const int MOD = 1e9 + 7;
	std::vector<long> dp = { 0, 1, 2, 5 };
	dp.resize (N+1);

	for (int i = 4; i <= N; i++) {
		dp[i]  = 2 * dp[i - 1] + dp[i - 3];
		dp[i] %= MOD;
	}

	return dp[N];
}
