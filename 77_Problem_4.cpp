// code_report Solution
// 

#include <vector>
#include <numeric>
#include <unordered_set>

using namespace std;

bool is_possible (const vector<int>& A, int m, int sum, int n)
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

	if (!is_possible (A, m, sum, n)) return false;

	vector<unordered_set<int>> sums (m + 1);
	sums[0].insert (0);

	for (int num : A)
		for (int i = m; i >= 1; --i)
			for (int t : sums[i - 1])
				sums[i].insert (t + num);

	for (int i = 1; i <= m; ++i)
		if (sum * i % n == 0 && sums[i].find (sum * i / n) != sums[i].end ()) return true;

	return false;
}
