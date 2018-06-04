// code_report Solution
// https://youtu.be/K_KrVZnagAU

public int longestMountain (int[] A) 
{
    int N = A.length, res = 0;
    int[] up = new int[N], dn = new int[N];

    for (int i = N - 2; i >= 0; --i) if (A[i] > A[i + 1]) dn[i] = dn[i + 1] + 1;
    for (int i = 1; i < N; ++i)      if (A[i] > A[i - 1]) up[i] = up[i - 1] + 1;
    for (int i = 0; i < N; ++i)      if (up[i] > 0 && dn[i] > 0) res = Math.max (res, up[i] + dn[i] + 1);
    
    return res;
}
