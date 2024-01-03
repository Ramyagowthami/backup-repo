#!/bin/bash
set -x
sed '1d' $1 > data_2

while read line
do 
	age=`echo "$line" | awk -F " " '{print $3}'`
	if [ $age -gt 30 ] && [ $age -lt 50 ];then
		echo "$line" | awk -F " " '{print $1}'
	fi
done < data_2
