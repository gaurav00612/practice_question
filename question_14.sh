#!/bin/bash


username="admin"
password="bash123"
attempts=1

while [ $attempts -le 3 ];do

	read -p "Please provide username:" userName
        read -p "Please provide password:" pass_word

	if [[ "$username" == "$userName" && "$password" == "$pass_word" ]];then
		echo "Login Sucessful"
		exit 0
		break;
	else
		attempts=$(($attempts+1))

	fi	
done

 if [  $attempts -gt 3 ];then
                       echo "Login Unsucessful"
		       exit 1
 fi
