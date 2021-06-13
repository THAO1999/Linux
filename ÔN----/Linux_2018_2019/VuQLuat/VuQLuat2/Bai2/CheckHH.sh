checkhh() {
	a=$1
	b=$(( $a / 2 ))
	sum=0
	for ((i=1; i<=b; i++))
	do
		if (($a % $i == 0))
		then sum=$(($sum + $i))
		fi
	done
	if (($sum == $a))
	then return 0
	else return 1
	fi
}
dialog --title "bai 2" --backtitle "bai 2" --inputbox "Nhap vao mot so" 10 30 2>/tmp/input.$$
sel=$?
na=`cat /tmp/input.$$`

case $sel in
	0) ( checkhh $na
		if (($? == 0))
		then
			dialog --title "Thong bao" --backtitle "th" --infobox "La so hoan hao" 10 30
		else dialog --title "Thong bao" --backtitle "th" --infobox "khong La so hoan hao" 10 30
		fi
	);;
	*) echo "Thoat chuong trinh";;
	esac

