#!/bin/bash

echo "Enter your age"
read age

if [ $age -lt 18 ];then
	echo "Not eligible"
else
	echo "Eligible"
fi


