#!/bin/bash

size=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g'`


if [ $size -gt 20 ]
then
 echo "mem -s "memory is reached 90%" xyz@gmail.com" > log5
fi


