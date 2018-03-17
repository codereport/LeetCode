// code_report Solution
// https://youtu.be/WhKrPDS1VAg

#include <vector>

using namespace std;

enum ValueType {
	RESET, 
	NEEDED,
	OK
};

int numSubarrayBoundedMax (const vector<int>& A, int L, int R) {
	
	int result = 0, start = -1, end = -1;
	
	for (int i = 0; i < A.size (); i++) {

		auto val_type = A[i] > R ? RESET : A[i] >= L ? NEEDED : OK;

		switch (val_type)
		{
		case RESET:  start = i;
		case NEEDED: end   = i;
		case OK:     // do nothing;
		default:     result += end - start;
		}
	}

	return result;
}
