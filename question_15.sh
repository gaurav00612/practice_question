#!/bin/bash

for service in "$@";do
	status=$(systemctl is-active $service)
	echo "$service $status"
done
