#!/bin/bash
nt() {
a=$1
b=`expr $a / 2 `
for ((i=2; i<=b; i++))
do
	c=`expr $a % $i`
	if [ $c -eq 0 ]
	then
		return 1
	else
		return 0
	fi
done
}

check() {
var=$@
for va in $var
do
	nt $va
	if [ $? -eq 0 ]
	then
		echo "$va"
	fi
done
}
echo "Cac so nt la: "
check $@
