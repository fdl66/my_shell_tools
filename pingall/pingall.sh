#!/bin/bash
for i in `seq 1 255`
    do 
        {
            ping -c 1 202.113.76.${i} > /dev/null 2>&1
            if [ $? -eq 0 ]; then 
                echo 10.0.0.${i} is OK
            else
                echo 10.0.0.${i} is down
            fi
        }&
done
wait
