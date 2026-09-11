#!/bin/bash

for i in {1..20}
do
	if (( $i % 2 == 0 ));then
	echo "$i"
else
	continue
fi
done
