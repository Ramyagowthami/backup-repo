#!/bin/bash

sed '1d' $1 > data_1
echo "enter a age"
read age

while read line
do
        age1=`echo "$line" | awk -F " " '{print $3}'`

        if [ $age1 -eq $age ] ; then
                echo "$line" | awk -F " " '{print $1}'
        fi

        done < data_1
	echo "noone with this age"

