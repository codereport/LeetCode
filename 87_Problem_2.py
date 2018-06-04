# code_report Solution
# https://youtu.be/K_KrVZnagAU

def longestMountain (self, A):
   up, dn, ans = [0] * len(A), [0] * len(A), 0

   for i in range(1, len(A)): 
      if A[i] > A[i - 1]: up[i] = up[i - 1] + 1

   for i in range(len(A) - 2, 0, -1):
      if A[i] > A[i + 1]: dn[i] = dn[i + 1] + 1

   for i in range(0, len(A)):
      if up[i] and dn[i]: ans = max (ans, up[i] + dn[i] + 1)

   return ans
