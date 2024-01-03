#!/bin/bash

sed '1d' $1 > data_1

while read line
do
        age=`echo "$line" | awk -F " " '{print $3}'`

        if [ $age -gt 30 ] && [ $age -lt 50 ];then
                echo "$line" | awk -F " " '{print $1}'
        fi

        done < data_1
