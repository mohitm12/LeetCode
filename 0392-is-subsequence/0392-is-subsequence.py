class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        ls = len(s)
        lt = len(t)
        pos = 0
        
        if s == "":
            return True

        for i in range(lt):
            if t[i] == s[pos]:
                pos += 1
            
            if pos == ls:
                return True
            
        return False