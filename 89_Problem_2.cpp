// code_report 
// 

#include <vector>
#include <map>

using namespace std;

int carFleet (int target, vector<int>& p, vector<int>& s)
{
   map<float, float> cars;
   for (int i = 0; i < p.size (); ++i) cars.insert ({ -p[i], s[i] });

   auto fleets    = 0;
   auto last_time = -1.0f;

   for (const auto& car : cars) {
      auto time = (target + car.first) / car.second;
      if (time > last_time) fleets++, last_time = time;
   }

   return fleets;
}
