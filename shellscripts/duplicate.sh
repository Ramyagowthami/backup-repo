#!/bin/bash
set -x

read name
	if [ -f $name ]
	then
	echo "enter a link name to create a link"

	read link
	if [ -L $link ]
	then
		echo "$link already exist"
	else
		ln -s $name $link
	fi
else
	echo "$name doesnt a file"
	fi

