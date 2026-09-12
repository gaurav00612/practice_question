#!/bin/bash

count=5
while [ $count -ge 1 ];do
	echo "$count"
	count=$(($count-1))
	if [ $count -eq 0 ];then
		echo "done!"
	fi
		
done
