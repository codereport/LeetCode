// code_report solution
// https://youtu.be/AWLims83GcU

public boolean canVisitAllRooms (List<List<Integer>> rooms) 
{
    Stack<Integer> todo   = new Stack<> (); 
    todo.add (0);
    HashSet<Integer> done = new HashSet<Integer> (); 
    done.add (0);
    
    while (!todo.isEmpty ()) 
    {
        int i = todo.pop ();
        for (int j : rooms.get (i)) {
            if (!done.contains (j)) {
                todo.add (j);
                done.add (j);
            }
        }
    }

    return rooms.size() == done.size();
}
