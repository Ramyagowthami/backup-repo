#!/bin/bash
set -x
num=0

for i in $*
do
	num=`expr $i + $num`
done
echo "sum of $* is $num"

