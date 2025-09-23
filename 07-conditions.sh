#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 20 ]; then

		echo "given  number $NUMBER is less than 20"
	else
		echo "given number $NUMBER is greater than or equal to 20"
fi
