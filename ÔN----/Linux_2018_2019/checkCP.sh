#!/bin/bash
check() {
	a=$1
	if (($a==1|$a==0))
	then return 0
	fi
	b=$(($a/2))
	for ((i=2; i<= $b; i++))
	do
		if(($i*$i==$a))
		then return 0
		fi
	done
	return 1
		
}
read -p "Nhap 1 so: " n
check $n
if (($? == 0))
then echo "la so Cp"
else echo "Khong phai Cp"
fi
