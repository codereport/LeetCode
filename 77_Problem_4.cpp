// code_report Solution
// https://youtu.be/FBQbm26tSzA

#include <vector>
#include <numeric>
#include <unordered_set>
#include <algorithm>
#include <iterator> 

using namespace std;

bool is_possible (int m, int sum, int n)
{
	bool possible = false;
	for (int i = 1; i <= m; ++i)
		if (sum * i % n == 0) possible = true;
	return possible;
}

bool splitArraySameAverage (const vector<int>& A)
{
	int n   = A.size ();
	int m   = n / 2;
	int sum = accumulate (A.begin (), A.end (), 0);

	if (!is_possible (m, sum, n)) return false;

	vector<unordered_set<int>> sums (m + 1);
	sums[0].insert (0);

	for (int num : A)
		for (int i = m; i >= 1; --i)
			transform (sums[i - 1].begin (), sums[i - 1].end (),
				inserter (sums[i], sums[i].end ()),
				[num](int t) { return t + num; });

	for (int i = 1; i <= m; ++i)
		if (sum * i % n == 0 && sums[i].count (sum * i / n)) return true;

	return false;
}
