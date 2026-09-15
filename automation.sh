#!/bin/bash


if [ $# -eq 1 ];then 
 echo "Please provide the source"
 exit 1;
fi


echo "================================"
echo "Automation Script"
echo "================================"
echo "Service: $2"
echo "Directory: $1"


check_service() {

	status=$(systemctl is-active $2)
        
	if [ "$status" == 'active' ];then
		echo "[$(date +%F)] Checking service..."
		echo "$2 is running"
	fi

}

create_backup() {
      
	if [ -n "$1" ];then
		mkdir -p "/home/gaurav/backup_file"
		cp -r  "$1" "/home/gaurav/backup_file"

		echo "[$(date +%F)] Creating backup..."
                echo "Backup successful"
	fi

}

check_service "$1" "$2"
create_backup "$1"

echo "================================="
echo "Automation completed successfully"
echo "================================="

