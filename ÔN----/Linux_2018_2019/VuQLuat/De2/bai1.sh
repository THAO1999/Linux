#!/bin/bash
c1() {
	mkdir VuQuangLuat_16003422
	mkdir ./VuQuangLuat_16003422/Bai1
	mkdir ./VuQuangLuat_16003422/Bai2
	mkdir ./VuQuangLuat_16003422/Bai3
}
c2() {
	for ((i=0; i<= 97/2; i++))
	do
		touch ./VuQuangLuat_16003422/Bai1/file$i.txt
	done
}
c3() {
	mkdir ./VuQuangLuat_16003422/Bai1/soChan
	for ((i=2; i<= 97/2; i++))
	do
		if (($i % 2 == 0))
		then
			cp ./VuQuangLuat_16003422/Bai1/file$i.txt ./VuQuangLuat_16003422/Bai1/soChan
		fi
	done
}
c4() {
	for ((i=2; i<= 97/2; i++))
	do
		if (($i % 2 != 0))
		then
			rm ./VuQuangLuat_16003422/Bai1/file$i.txt
		fi
	done
}

while true
do
	echo "MENU"
	echo "1. Tao folder VuQuangLuat_16003422"
	echo "2. Tao N file in the Bai1"
	echo "3. Tao thu muc ten soChan "
	echo "4. Xoa file voi thu tu le"
	echo "5. Thoat"
	read -p "Chon chuc nang: " n
	case $n in
		1) c1;;
		2) c2;;
		3) c3;;
		4) c4;;
		5) break;;
	esac
done
