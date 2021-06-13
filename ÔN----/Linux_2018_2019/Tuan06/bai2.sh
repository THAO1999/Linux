#!/bin/bash
if (($1 != 0))
then
	for ((i=1; i<=10; i++))
	do
		tich=`expr $1 \* $i`
		echo "$1 x $i = $tich"
	done
fi
