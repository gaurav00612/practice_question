#!/bin/bash

name=$3

function calculator() {

 if [ -n "$name" ];then
	
       if [ $name == "add" ];then
              count=$(( $1 + $2 ))
	      echo "Add $count"
	
        elif [ $name == "sub" ];then
		count=$(( $1 - $2 ))
		echo "Sub $count"
	elif [ $name == "div" ];then
		count=$(( $1 / $2 ))
		echo "Divide $count"
	elif [ $name == "multi" ];then
		count=$(($1*$2))
		echo "Multiply $count"

	else
		echo "Please provide proper values"
	fi

else
	echo "please add name for computation"
fi

}

calculator "$1" "$2" "$name"
