#!/bin/bash

ls /tmp

if [ $? -eq 0 ];then
	echo "0"
else
	echo "Command failed"
fi
