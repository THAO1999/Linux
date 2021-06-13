#!/bin/bash
sum() {
	sum=0
	for i in $*
	do
		sum=`expr $sum + $i`
	done
	echo "Tong Cac Doi So Truyen Vao La: $sum"
}
sum $*
