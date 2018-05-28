// code_report Solution
// https://youtu.be/AWLims83GcU

#include <vector>
#include <unordered_set>
#include <stack>

using namespace std;

bool canVisitAllRooms (const vector<vector<int>>& rooms) 
{
   stack<int> todo; 
   todo.push (0);
   unordered_set<int> done = { 0 };
   
   while (!todo.empty ()) 
   {
      auto top = todo.top (); 
      todo.pop ();
      for (auto room : rooms[top]) {
         if (done.find (room) == done.end ()) {
            todo.push (room);
            done.insert (room);
         }
      }
   }

   return rooms.size () == done.size ();
}
