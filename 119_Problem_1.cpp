// code_report Solution
// Video Solution:          https://youtu.be/5FNh2HKYSjQ
// Problem Link (Contest):  https://leetcode.com/contest/weekly-contest-119/problems/k-closest-points-to-origin/
// Problem Link (Practice): https://leetcode.com/problems/k-closest-points-to-origin/

// More efficient solution

vector<vector<int>> kClosest(vector<vector<int>>& p, int K) {
   auto dist = [ ](auto a, auto b) { return sqrt(a * a + b * b); };
   auto comp = [&](auto a, auto b) { return dist(a[0], a[1]) < dist(b[0], b[1]); };
   nth_element(begin(p), begin(p) + K, end(p), comp);
   return vector<vector<int>>(begin(p), begin(p) + K);
}

// Less efficient solution

vector<vector<int>> kClosest(vector<vector<int>>& p, int K) {
   auto dist = [ ](auto a, auto b) { return sqrt(a * a + b * b); };
   auto comp = [&](auto a, auto b) { return dist(a[0], a[1]) < dist(b[0], b[1]); };
   partial_sort(begin(p), begin(p) + K, end(p), comp);
   return vector<vector<int>>(begin(p), begin(p) + K);
}
