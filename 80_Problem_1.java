// code_report Solution
// https://youtu.be/yNhgEYlTTVs

import java.util.*;
import java.util.Arrays;
 
public String mostCommonWord(String p, String[] banned) 
{
    Set<String> b = new HashSet<>(Arrays.asList (banned));
    Map<String, Integer> m = new HashMap<> ();
    String[] words = p.replaceAll("[^a-zA-z ]" , "").toLowerCase ().split ("\\s+");
    String ans  = ""; 
    Integer max = 0;

    for (String w : words) {
        if (!b.contains (w)) {
            m.put (w, m.getOrDefault (w, 0) + 1);
            if (m.get (w) > max) {
                ans = w; 
                max = m.get (w);
            }
        }
    }
    
    return ans;
}
