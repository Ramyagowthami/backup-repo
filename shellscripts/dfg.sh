#!/bin/bash
set -x
num=$1

for i in $*
do
	if [ $i -gt 0 ];then
 	echo "$num"
	num=$i
	
	fi
done
