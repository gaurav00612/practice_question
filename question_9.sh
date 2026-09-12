#!/bin/bash

source ./file_var.sh

if [ -n "$COURSE" ];then
	echo "Current Course: $COURSE"
else
	echo "COURSE is not configured"
fi
