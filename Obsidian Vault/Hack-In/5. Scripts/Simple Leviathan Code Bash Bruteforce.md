#!/bin/bash

cd /home/leviathan6/

for i in {0..10000} {a..z} {A..Z}
do
    if (./leviathan6 $i | grep Wrong)
    then
        echo "$i wrong"
    else 
        echo "SUCCESS $i"
        break
    fi
done