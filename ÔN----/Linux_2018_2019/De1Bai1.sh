#!/bin/bash
c1() {
	mkdir VuQuangLuat_16003422
	cd VuQuangLuat_16003422
	mkdir Bai1 Bai2 Bai3
}
c2() {
	for ((i=1; i<=97; i++))
	do
		touch ./VuQuangLuat_16003422/Bai1/file$i.txt
	done
}
c3() {
	mkdir ./VuQuangLuat_16003422/Bai1/numbers
	cd ./VuQuangLuat_16003422/Bai1
	for ((i=1; i<=97; i++))
	do
		if (($i % 3 == 0))
		then
			cp file$i.txt ./numbers
		fi
	done
}
c4() {
	cd ./VuQuangLuat_16003422/Bai1
	for ((i=1; i<=97; i++))
	do
		if (($i % 3 != 0))
		then
			rm file$i.txt
		fi
	done
}
while true
do
	
	echo "1. Tao thu muc"
	echo "2. Tao N tap tin"
	echo "3. Tao thu muc Number"
	echo "4. Xoa file khong chia het cho 3 in bai1"
	echo "5. Thoat"
	read -p "CHON CHUC NANG : " n
	case $n in
		1)c1;;
		2)c2;;
		3)c3;;
		4)c4;;
		5)break;;
	esac
done
	
