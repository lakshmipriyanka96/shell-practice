#!/bin/bash

#everything in shell is considered as string

NUMBER1=100
NUMBER2=2200
NAME=PRIYANKA
SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "total sum is ${SUM}"

#index starts from 0 and size starts from 1

FRUITS=("APPLE" "BANANA" "GRAPES" "MANGO")

echo "All fruits: ${FRUITS[@]}"
echo "first fruit: ${FRUITS[0]}"
echo "first fruit: ${FRUITS[3]}"
