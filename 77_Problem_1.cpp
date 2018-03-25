// code_report Solution
// 

#include <vector>

using namespace std;

vector<int> numberOfLines (vector<int>& widths, string S)
{
	int lines = 0, i = 0;

	for (auto c : S) {
		i += widths[c - 'a'];
		if (i > 100) {
			lines++;
			i = widths[c - 'a'];
		}
	}

	return { lines + 1, i };
}
