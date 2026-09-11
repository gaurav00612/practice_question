#!/bin/bash


echo "Enter a number"
read number

if [ $number -lt 0 ];then
	echo "Negative number"
elif [ $number -eq 0 ];then
	echo "Number is 0"
else
	echo "Positive number"
fi




