#!/bin/bash

password="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"
pin=0000
error="Wrong! Please enter the correct current password and pincode. Try again."
echo "$password $pin" 
for i in {0000..0005}; do
        read -p '' check
        if [ "${check}" = "${error}" ]; then
                        ((pin++))
                        "$password $pin" 
        else            
                echo "CORRECT"
fi
done
