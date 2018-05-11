// code_report Solution
// https://youtu.be/oKOCYZd4m7E

#include <algorithm>

using namespace std;

int consecutiveNumbersSum1 (int N) 
{
   int ans = 0;
   for (int n = 2; n * (n + 1) / 2 <= N; ++n) 
      if ((N - n * (n + 1) / 2) % n == 0) ans++;
   return ans + 1;
}

int consecutiveNumbersSum2 (int N)
{
   int ans = 0;
   for (int j = 2; (j * (j + 1)) / 2 <= N; j++) {
      for (int i = max (N / j - j / 2, 1), t = 0; i < N / j + j / 2; i++) {
         t = (i - 1) * j + (j * (j + 1)) / 2;
         if (t == N) ans++;
      }
   }

   return ans + 1;
}
