class Solution:
    def isPalindrome(self, s: str) -> bool:
        string = ""
        for i in s:
            if i in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ':
                string = string + chr(ord(i)+32)
            
            elif i in '0123456789abcdefghijklmnopqrstuvwxyz':
                string = string + i

        l = len(string)
        for j in range(l):
            if string[j] != string[l-j-1]:
                return False
            
        return True