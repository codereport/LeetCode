// code_report Solution
// 

#include <vector>
#include <algorithm>
#include <unordered_map>
#include <queue>
#include <unordered_set>

using namespace std;

int numBusesToDestination (vector<vector<int>>& routes, int S, int T) 
{
   unordered_map<int, unordered_set<int>> stop_routes;
   
   for (int i = 0; i < routes.size (); ++i) 
      for (int j : routes[i]) stop_routes[j].insert (i);

   queue<pair<int, int>> to_visit; 
   to_visit.push ({ S, 0 });
   unordered_set<int> stops_visited = { S };

   while (!to_visit.empty ()) 
   {
      int stop  = to_visit.front ().first;
      int bus_n = to_visit.front ().second;
      
      if (stop == T) return bus_n;
      to_visit.pop ();
      
      for (const auto& route : stop_routes[stop]) {
         for (const auto& next_stop : routes[route]) {
            auto it = stops_visited.insert (next_stop);
            if (it.second) to_visit.push ({ next_stop, bus_n + 1 });              
         }
         
         routes[route].clear ();
      }
   }

   return -1;
}
