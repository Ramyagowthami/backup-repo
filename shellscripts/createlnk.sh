#!/bin/bash

echo "enter a file name to create a link"
read file

if [ ! -f $file ];then
	echo "link cannot be create bcz $file doesnot exist"
	exit1
fi
	echo "enter a link name to create"
	read link1
	if [ -L $link1 ];then
		echo "$link1 softlink already exist"
		exit1
	fi

	ln -s $file $link1
	if [ $? -eq 0 ];then
	echo "softlink of $link1 is created successfully"
else
	echo"link $link1 not created"
	fi
