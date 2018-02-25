// code_report Solution
// https://youtu.be/67a-etTLWEg

#include <vector>
#include <algorithm>

using namespace std;

double dist (double a, double b, double x, double y) { 
	return (abs (x - a) + abs (y - b)); 
}

bool escapeGhosts (vector<vector<int>>& ghosts, vector<int>& target) {
	double min_dist = 20001;
	for (auto g : ghosts) min_dist = min (min_dist, dist (g[0], g[1], target[0], target[1]));
	return dist (0, 0, target[0], target[1]) < min_dist;
}
