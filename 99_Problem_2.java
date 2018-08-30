// code_report Solution
// https://youtu.be/WJ4NtyrakT0

String sort_string (String s) {
    char[] a = s.toCharArray ();
    Arrays.sort (a);
    return String.valueOf (a);
}

public int numSpecialEquivGroups(String[] A) {
    Set<String> s = new HashSet<> ();
    for (String w : A) {
        String odd = "", even = "";
        for (int i = 0; i < w.length (); ++i) {
            if (i % 2 == 0) even += w.charAt (i);
            else            odd  += w.charAt (i);
        }
        odd  = sort_string (odd);
        even = sort_string (even);
        s.add (odd + even);
    }
    return s.size ();
}
