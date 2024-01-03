#!/bin/bash

echo "enter a filename"
read filename

find /home/ec2-user -iname "$filename" > file_loc
if [ -s file_loc ];then
	echo "$filename found in below locations"
	cat file_loc
else
	echo "$filename not found in any files or directories"
fi
