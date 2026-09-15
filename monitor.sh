#!/bin/bash

check_service() {

	service_name=$1
  	status=$(systemctl is-active $service_name)
        
	if [ $? -eq 0 ]; then 
		echo "$(date +%T) - $service_name running";
       	else 
		echo "$(date +%T) - WARNING: $service_name is not running";
       	fi

	
}

if [  $# -gt 0 ];then
	while [ true ];do
	  check_service $1
	  sleep 10
       done
else 
	echo "Service name required"
fi

