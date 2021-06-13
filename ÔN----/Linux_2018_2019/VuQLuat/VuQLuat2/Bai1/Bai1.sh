#!/bin/bash
c1() {
	for((i=1; i<=22; i++))
	do
		a=$((($i*2)-1))
		touch file_$a.txt
	done
}
c2() {
	echo "So dong trong tep /etc/passwd: "
	wc -l /etc/passwd
	echo "Dong dai nhat la : "
	wc -L /etc/passwd
}
c3() {
	for item in `ls *.doc`
	do
		mv "$item" "${item%doc}txt"
	done
}
while true
do
	echo "MENU"
	echo "1. Tao N fiel"
	echo "2. Dem file"
	echo "3. Doi ten .doc --> .txt"
	echo "4. Thoat"
	read -p "Chon Chuc Nang:  " n
	case $n in
		1)c1 ;;
		2)c2 ;;
		3)c3;;
		4)break;;
	esac
done
