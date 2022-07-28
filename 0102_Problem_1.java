// code_report Solution
// https://youtu.be/FgzZ4ShshPs

public void swap (int[] a, int i, int j) {
    int t = a[i];
    a[i]  = a[j];
    a[j]  = t;
}

public int[] sortArrayByParity(int[] A) {
    int n = A.length;
    for (int i = 0, j = n-1;; i++, j--) {
        while (i <  n && A[i] % 2 == 0) i++; 
        while (j >= 0 && A[j] % 2 == 1) j--;
        if (i > j) break;
        swap (A, i, j);
    }
    return A;
}
