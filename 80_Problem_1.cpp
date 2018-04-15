// code_report Solution
// https://youtu.be/yNhgEYlTTVs

#include <vector>
#include <unordered_set>
#include <string>
#include <unordered_map>
#include <sstream>

using namespace std;

string mostCommonWord (string p, vector<string>& banned) 
{
   unordered_set<string> b (banned.begin (), banned.end ());
   unordered_map<string, int> m;

   for (auto& c : p) c = isalpha (c) ? tolower (c) : ' ';

   pair<string, int> ans = { "", 0 };
   istringstream iss (p);
   string w;

   while (iss >> w)
      if (b.count (w) == 0 && ++m[w] > ans.second) ans = { w, m[w] };

   return ans.first;
}
