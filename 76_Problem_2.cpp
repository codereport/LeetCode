// code_report Solution
// https://youtu.be/mLTF2UXkd2o

#include <vector>
#include <algorithm>

using namespace std;

int minSwap (vector<int>& A, vector<int>& B) 
{
	int n = A.size ();
	vector<int> x (n, 0); // number of swaps needed up to i, if no swap at i
	vector<int> y (n, 1); // number of swaps needed up to i, if swap at i
	
	for (int i = 1; i < n; ++i) 
	{
		x[i] = y[i] = n;
		
		// elements are in order without a swap
		if (A[i - 1] < A[i] && B[i - 1] < B[i]) {
			x[i] = x[i - 1];
			y[i] = y[i - 1] + 1;
		}
		
		// elements are in order with a swap
		if (A[i - 1] < B[i] && B[i - 1] < A[i]) {
			x[i] = min (x[i], y[i - 1]);
			y[i] = min (y[i], x[i - 1] + 1);
		}
	}

	return min (y[n - 1], x[n - 1]);
}
