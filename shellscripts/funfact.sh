#!/bin/bash

function factorial {

num=$i
fact=1

while [ $num -gt 0 ]
do
	fact=`expr $num \* $fact`
	num=`expr $num - 1`
done
echo "fact of $i is $fact"

}

for i in $*
do
	factorial $i
done
