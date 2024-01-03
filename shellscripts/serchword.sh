#!/bin/bash

echo "enter a word"
read word

grep -l -R "$word" * > log_1
if [ $? -eq 0 ];then
	cat log_1
echo "$word found in $log_1 files"
else 
	echo "$word not found in any files"
fi
