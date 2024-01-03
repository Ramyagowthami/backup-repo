#!/bin/bash

echo "enter a name to check"
read name
if [ -f $name ];then
	echo "this is a file"
elif [ -d $name ];then
	echo "this is a directory"
elif [ -L $name ];then echo "this is a link"
else
	echo "file doesnt exist"
fi

