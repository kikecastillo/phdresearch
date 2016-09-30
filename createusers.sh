#!/bin/bash

NUMBER_OF_USERS=$1
OFFSET=$2
COUNTER=$(($2 + 1982))
for i in `seq $OFFSET $NUMBER_OF_USERS`; do
	drush ucrt "user$i" --password="$COUNTER" --mail="user$i@test.com"
	let COUNTER+=1
done
