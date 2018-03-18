// code_report Solution
// 

#include <string>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;

map<char, int> m;

int get_val (char a, char b) {
	return m[a] * 16 + m[b];
}

string find_min (char a, char b)
{
	for (int i = 0; i < 10; ++i) m.insert ({ '0' + i, i });
	for (int i = 0; i <  6; ++i) m.insert ({ 'a' + i, 10 + i });

	int val = get_val (a, b), diff = 256;
	string s;

	for (auto c : m) {
		int t = abs (val - get_val (c.first, c.first));
		if (t < diff) {
			diff = t;
			s    = c.first;
		}
	}

	return s + s;
}

string similarRGB (string c)
{
	return "#" + find_min (c[1], c[2]) 
			   + find_min (c[3], c[4]) 
			   + find_min (c[5], c[6]);
}
