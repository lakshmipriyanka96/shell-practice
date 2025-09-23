#!/bin/bash
echo "Today's date is: $(date)"

#echo "Start Time is: START_TIME=$(date +s%)"

Name1="Priyanka"
Name2="Sunitha"
Name3="Shalini"

echo "My name is $Name1"

echo "$Name1 like dance"

echo "$Name1 invited $Name2"

echo "$Name2 called $Name3 to party"

echo "enter username"

read USER_NAME

echo "user name is : $USER_NAME"

echo "enter the password"

read -s  -p PASSWORD

echo "password : $PASSWORD"

START_TIME=$(DATE +%s)

echo "$START_TIME"

sleep 10

END_TIME=$(DATE +%s)

echo "$END_TIME"

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo " Script executed in $TOTAL_TIME "

