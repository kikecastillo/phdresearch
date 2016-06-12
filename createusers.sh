#!/bin/bash

NUMBER_OF_USERS=$1
COUNTER=1982
for i in `seq 1 $NUMBER_OF_USERS`; do
	drush ucrt "user$i" --password="$COUNTER" --mail="user$i@test.com"
	let COUNTER+=1
done
