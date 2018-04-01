// code_report Solution
// https://youtu.be/B_PcaHnqxn8?t=2m6s

#include<string>
#include<vector>
#include<unordered_map>

using namespace std;

vector<string> subdomainVisits(vector<string>& cpdomains) 
{    
    unordered_map<string, int> m; 

    for (const auto& word : cpdomains) 
    {
        int i    = word.find (" "); 
        int n    = stoi (word.substr (0, i)); 
        string s = word.substr (i+1, word.size ()-i-1);

        for (int i = s.size ()-1; i > 0; i--) {
            if (s[i] == '.') m[s.substr (i+1, s.size ()-i-1)] += n;
        }
        
        m[s] += n;
    }

    vector<string> v;
    for (const auto& e : m) v.emplace_back (to_string (e.second) + " " + e.first);
    return v;
}
