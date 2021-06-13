#!/bin/bash
checknt(){
	s=$1
	m=`expr $s / 2 `
	for((i=2;i<=m;i++))
	do
		c=`expr $s % $i`
		if [ $c -eq 0 ]
		then
			return 1
		else
			return 0
		fi
	done
}
function nt(){
	var=$*
	for num in $var
	do
		checknt $num
		if [ $? -eq 0 ]
		then
			echo "$num"
		fi
	done
}
echo "Cac so nguyen to trong day truyen vao la: "
nt $*
