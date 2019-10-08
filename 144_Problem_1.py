# code_report Solution
# Problem Link: https://leetcode.com/contest/weekly-contest-144/problems/defanging-an-ip-address/

def defangIPaddr(self, address: str) -> str:
    return address.replace('.', '[.]')
