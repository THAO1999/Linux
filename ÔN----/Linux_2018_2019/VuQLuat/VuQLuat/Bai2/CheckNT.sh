checknt() {
	a=$1
	if (($a==1|$a==2))
	then return 0
	fi
	b=$(( $a/2 ))
	for ((i=2; i<=b; i++))
	do
		if (($a % $i == 0))
		then return 1
		else
			return 0
		fi
	done
}
dialog --title "bai2" --backtitle "awe" --inputbox "Nhap vao 1 so" 10 50 2>/tmp/input.$$
sel=$?
na=`cat /tmp/input.$$`
case $sel in
	0) ( checknt $na
		if (( $? == 0))
		then
			echo "La so nguyen to"
		else echo "Khong phai so nt"
		fi );;
	1) echo "Cancel is Press";;
	255) echo "ESCAPE";;
esac
rm -f /tmp/input.$$
checknt $1
