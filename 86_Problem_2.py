# code_report Solution
#

def canVisitAllRooms (self, rooms):
   todo = [0]
   done = set (todo)
   while todo:
      i = todo.pop()
      for j in rooms[i]:
            if j not in done:
               todo.append (j)
               done.add (j)

   return len (done) == len (rooms)
