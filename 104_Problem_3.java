// code_report Solution
// https://youtu.be/-IPzqZeVmr4

public List<String> wordSubsets(String[] A, String[] B) {
    int[] v = new int[26];
    for (String w : B) {
        int[] t = new int[26];
        for (char c : w.toCharArray ()) t[c-'a']++;
        for (int i = 0; i < 26; ++i) 
            v[i] = Math.max (v[i], t[i]);
    }
    List<String> ans = new ArrayList<> ();
    for (String w : A) {
        int[] t = new int[26];
        for (char c : w.toCharArray ()) t[c-'a']++;
        boolean good = true;
        for (int i = 0; i < 26; ++i)
            if (t[i] < v[i]) good = false;
        if (good) ans.add (w);
    }
    return ans;
}
