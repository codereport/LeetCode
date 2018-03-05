// code_report Solution
// https://youtu.be/xjLXiNlStMQ?t=6m12s

#include <vector>
#include <algorithm>

using namespace std;

int numMatchingSubseq (string S, vector<string>& words) {
	vector<vector<int>> alpha (26);
	for (int i = 0; i < S.size (); ++i) alpha[S[i] - 'a'].push_back (i);
	int num_found = 0;

	for (const auto& word : words) {
		int curr_idx = -1;
		bool found = true;

		for (char c : word) {
			auto it = upper_bound (alpha[c - 'a'].begin (), alpha[c - 'a'].end (), curr_idx);
			if (it == alpha[c - 'a'].end ()) found = false;
			else curr_idx = *it;
		}

		if (found) num_found++;
	}

	return num_found;
}
