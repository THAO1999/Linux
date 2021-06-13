#!/bin/bash
giaithua() {
	n=$1
	gt=1
	for ((i=n; i>=1; i--))
	do
		gt=$(($gt*$i))
	done
	return $gt
}
sumgt() {
	n=$1
	sum=0;
	for((i=n; i>=1; i--))
	do
		giaithua $i
		sum=`expr $? + $sum`
	done
	echo "Tong cua gia thua la : $sum"
}
sumgt 5

