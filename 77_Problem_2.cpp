// code_report Solution
// https://youtu.be/9QRhJ6z6wmc?t=7m58s

#include <vector>
#include <string>
#include <unordered_set>

using namespace std;

int uniqueMorseRepresentations (vector<string>& words)
{
	vector<string> a = { ".-","-...","-.-.","-..",".","..-.","--.","....",
						 "..",".---","-.-",".-..","--","-.","---",".--.",
			             "--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.." };

	unordered_set<string> u;

	for (auto word : words) {
		string t;
		for (auto c : word) t += a[c - 'a'];
		u.insert (t);
	}

	return u.size ();
}
