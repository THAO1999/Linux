BEGIN {i=0; printf "Tong kich thuoc cua cac tap tin thu muc trong /etc la: "}
{
	if(NR > 1){
		i=i+$5
	}
}
END {print i}
