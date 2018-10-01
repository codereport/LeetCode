// code_report Solution
// https://youtu.be/-IPzqZeVmr4

#define FORI(s,n) for(int i = s; i < n; i++)

vector<string> wordSubsets (vector<string>& A, vector<string>& B) {
   vector<int> v (26);
   for (const auto& w : B) {
      vector<int> t (26);
      for (auto c : w) t[c - 'a']++;
      FORI (0, 26) v[i] = max (v[i], t[i]);
   }
   vector<string> ans;
   for (const auto& w : A) {
      vector<int> t (26);
      for (auto c : w) t[c - 'a']++;
      bool good = true;
      FORI (0, 26) 
         if (t[i] < v[i]) good = false;
      if (good) ans.push_back (w);
   }
   return ans;
}
