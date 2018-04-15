# code_report Solution
# https://youtu.be/yNhgEYlTTVs

    def mostCommonWord(self, p, banned):

       words = re.sub(r'[^a-zA-Z]', ' ', p).lower().split()
       m = collections.defaultdict(int)
       ans = (0, "")
       for word in words:
          if word not in banned:
                m[word] += 1
                ans = max (ans, (m[word], word))
       return ans[1]       
