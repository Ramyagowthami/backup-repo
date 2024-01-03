#!/bin/bash

echo "enter a filename to edit"
read file

if [ -f $file ];then
	vim $file
else
	echo "$file doesnt exist"
fi
