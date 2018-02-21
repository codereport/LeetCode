// code_report Solution
// https://youtu.be/3Ep-PXy8YIc

#include <vector>
#include <queue>

using namespace std;

struct fraction {
	double value;
	int i, j;
	fraction (double d, int x, int y) : value (d), i (x), j (y) {}
	bool operator< (const fraction& f) const { return value > f.value; }
};

vector<int> kthSmallestPrimeFraction (vector<int>& A, int K) {

	priority_queue<fraction> pq;

	for (int i = 0; i < A.size (); i++) {
		pq.push (fraction (static_cast<double> (A[i]) / A.back (), i, A.size () - 1));
	}

	while (K > 1)
	{
		auto top = pq.top ();
		pq.pop ();
		top.j--;
		pq.push (fraction (static_cast<double> (A[top.i]) / A[top.j], top.i, top.j));
		K--;
	}

	return { A[pq.top ().i], A[pq.top ().j] };
}
