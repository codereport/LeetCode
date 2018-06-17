// code_report
// https://youtu.be/H5w6doOXz10

import java.util.*;
import java.io.*;

public int carFleet(int target, int[] p, int[] s) 
{
    TreeMap<Float,Float> cars = new TreeMap ();
    for (int i = 0; i < p.length; ++i) cars.put (-(float)p[i], (float)s[i]);
    
    Integer fleets    = 0;
    Float   last_time = 0.0f;
    
    for (Map.Entry<Float,Float> car : cars.entrySet ()) {
        Float time = (target + car.getKey ()) / car.getValue ();
        if (time > last_time) {
            fleets++;
            last_time = time;
        }
    }
    
    return fleets;
}
